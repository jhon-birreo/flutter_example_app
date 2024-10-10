import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/todo_app/data/models/models.dart';
import 'package:flutter_example_app/features/todo_app/presentation/providers/providers.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppAlerts {
  AppAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: context.textTheme.bodyLarge?.copyWith(
          color: context.colorScheme.surface,
        ),
      ),
      // duration: const Duration(seconds: 2),
      backgroundColor: context.colorScheme.primary,
    ));
  }

  static Future<void> showDeleteAlertDialog(
    BuildContext context,
    WidgetRef ref,
    TaskModel task,
  ) async {
    Widget cancelButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Cancel'),
    );

    Widget deleteButton = TextButton(
      onPressed: () async {
        final taskId = task.id;
        if (taskId != null) {
          ref.read(taskProvider.notifier).deleteTask(taskId).then((value) {
            AppAlerts.displaySnackBar(context, 'Task deleted successfully');
            context.pop();
          });
        }
      },
      child: const Text('Delete'),
    );

    AlertDialog alert = AlertDialog(
      title: const Text('Are you sure you want to delete this task?'),
      content: const Text('This action cannot be undone.'),
      actions: [
        cancelButton,
        deleteButton,
      ],
    );

    await showDialog(
      context: context,
      builder: (context) {
        return alert;
      },
    );
  }
}
