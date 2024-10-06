import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final TaskCategory category;
  final bool isCompleted;
  const Task({
    this.id,
    required this.title,
    required this.time,
    required this.date,
    required this.note,
    required this.category,
    required this.isCompleted,
  });

  @override
  List<Object?> get props =>
      [id, title, time, date, note, category, isCompleted];

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      TaskKeys.id: id,
      TaskKeys.title: title,
      TaskKeys.note: note,
      TaskKeys.time: time,
      TaskKeys.date: date,
      TaskKeys.category: category.name,
      TaskKeys.isCompleted: isCompleted,
    };
  }

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
      id: map[TaskKeys.id] != null ? map['id'] as int : null,
      title: map[TaskKeys.title],
      note: map[TaskKeys.note],
      time: map[TaskKeys.time],
      date: map[TaskKeys.date],
      category: TaskCategory.stringToTaskCategory(map[TaskKeys.category]),
      isCompleted: map[TaskKeys.isCompleted] as bool,
    );
  }
}
