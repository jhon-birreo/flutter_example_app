import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/todo_app/data/models/models.dart';
import 'package:flutter_example_app/features/todo_app/presentation/providers/providers.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class Helpers {
  Helpers._();

  static String timeToString(TimeOfDay time) {
    try {
      final DateTime now = DateTime.now();
      final date =
          DateTime(now.year, now.month, now.day, time.hour, time.minute);
      return DateFormat.jm().format(date);
    } catch (e) {
      return '12:00 pm';
    }
  }

  static bool isTaskFromSelectedDate(TaskModel task, DateTime selectedDate) {
    final DateTime taskDate = _stringToDateTime(task.date);
    if (taskDate.year == selectedDate.year &&
        taskDate.month == selectedDate.month &&
        taskDate.day == selectedDate.day) {
      return true;
    }

    return false;
  }

  static DateTime _stringToDateTime  (String date) {
    try {
      DateFormat dateFormat = DateFormat.yMMMd();
      return dateFormat.parse(date);
    } catch (e) {
      return DateTime.now();
    }
  }

  static selectedDate(BuildContext context, WidgetRef ref) async {
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
