import 'package:flutter/material.dart';
import 'package:flutter_example_app/config/routes/router.dart';
import 'package:flutter_example_app/data/data.dart';
import 'package:flutter_example_app/providers/providers.dart';
import 'package:flutter_example_app/utils/app_alerts.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:flutter_example_app/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CreateTaskScreen extends ConsumerStatefulWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  ConsumerState<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends ConsumerState<CreateTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CommonTaskDetails(
              title: 'Title of the task',
              hintText: 'Enter the title of the task',
              controller: _titleController,
            ),
            const Gap(16),
            const SelectCategory(),
            const Gap(16),
            const SelectDateTime(),
            const Gap(16),
            CommonTaskDetails(
              title: 'Note',
              hintText: 'Enter the note of the task',
              maxLines: 5,
              controller: _noteController,
            ),
            const Gap(40),
            ElevatedButton(
              onPressed: () {
                _createTask();
              },
              child: const DisplayWhiteText(text: 'Save'),
            )
          ]),
        ),
      ),
    );
  }

  void _createTask() async {
    final title = _titleController.text.trim();
    final note = _noteController.text.trim();
    final category = ref.watch(categoryProvider);
    final date = ref.watch(dateProvider);
    final time = ref.watch(timeProvider);
    if (title.isNotEmpty) {
      final task = Task(
        title: title,
        note: note,
        date: DateFormat.yMMMd().format(date),
        time: Helpers.timeToString(time),
        category: category,
        isCompleted: false,
      );

      await ref.read(taskProvider.notifier).createTask(task).then(
        (value) {
          AppAlerts.displaySnackBar(context, 'Task created successfully');
          context.go(RouteLocation.home);
        },
      );
    } else {
      debugPrint('Please enter a title');
      AppAlerts.displaySnackBar(context, 'Please enter a title');
    }
  }
}
