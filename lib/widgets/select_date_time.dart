import 'package:flutter/material.dart';
import 'package:flutter_example_app/providers/providers.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:flutter_example_app/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class SelectDateTime extends ConsumerWidget {
  const SelectDateTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(dateProvider);
    final time = ref.watch(timeProvider);
    return Row(children: [
      Expanded(
        child: CommonTaskDetails(
          title: 'Date',
          hintText: DateFormat.yMMMd().format(date),
          readOnly: true,
          suffixIcon: IconButton(
            onPressed: () => _selectedDate(context, ref),
            icon: const FaIcon(FontAwesomeIcons.calendar),
          ),
        ),
      ),
      const Gap(10),
      Expanded(
        child: CommonTaskDetails(
          title: 'Time',
          hintText: Helpers.timeToString(time),
          readOnly: true,
          suffixIcon: IconButton(
            onPressed: () => _selectedTime(context, ref),
            icon: const FaIcon(FontAwesomeIcons.clock),
          ),
        ),
      )
    ]);
  }

  void _selectedTime(BuildContext context, WidgetRef ref) async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      ref.read(timeProvider.notifier).state = time;
    }
  }

  void _selectedDate(BuildContext context, WidgetRef ref) async {
    final initialDate = ref.read(dateProvider);
    DateTime? datePicker = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2090),
    );
    if (datePicker != null) {
      ref.read(dateProvider.notifier).state = datePicker;
    }
  }
}
