// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/features/app_list/domain/entities/entities.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';

class TaskModel extends TaskEntity with EquatableMixin {
  TaskModel({
    super.id,
    required super.title,
    required super.time,
    required super.date,
    required super.note,
    required super.category,
    required super.isCompleted,
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
      TaskKeys.isCompleted: isCompleted ? 1 : 0,
    };
  }

  factory TaskModel.fromJson(Map<String, dynamic> map) {
    return TaskModel(
      id: map[TaskKeys.id] != null ? map['id'] as int : null,
      title: map[TaskKeys.title],
      note: map[TaskKeys.note],
      time: map[TaskKeys.time],
      date: map[TaskKeys.date],
      category: TaskCategory.stringToTaskCategory(map[TaskKeys.category]),
      isCompleted: map[TaskKeys.isCompleted] == 1 ? true : false,
    );
  }

  TaskModel copyWith({
    int? id,
    String? title,
    String? note,
    String? time,
    String? date,
    TaskCategory? category,
    bool? isCompleted,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      note: note ?? this.note,
      time: time ?? this.time,
      date: date ?? this.date,
      category: category ?? this.category,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
