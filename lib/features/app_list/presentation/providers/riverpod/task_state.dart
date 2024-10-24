import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/features/app_list/data/models/models.dart';

class TaskState extends Equatable {
  final List<TaskModel> tasks;

  const TaskState(this.tasks);
  const TaskState.initial({this.tasks = const []});

  TaskState copyWith({List<TaskModel>? tasks}) {
    return TaskState(
      tasks ?? this.tasks,
    );
  }

  @override
  List<Object?> get props => [tasks];
}
