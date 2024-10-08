import 'package:flutter_example_app/shared/utils/utils.dart';

class TaskEntity {
  TaskEntity({
    this.id,
    required this.title,
    required this.date,
    required this.time,
    required this.note,
    required this.category,
    required this.isCompleted,
  });

  final int? id;
  final String title;
  final String date;
  final String time;
  final String note;
  final bool isCompleted;
  final TaskCategory category;
}
