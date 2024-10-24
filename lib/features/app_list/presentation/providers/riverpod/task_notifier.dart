import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/app_list/data/models/models.dart';
import 'package:flutter_example_app/features/app_list/data/repositories/repositories.dart';
import 'package:flutter_example_app/features/app_list/presentation/providers/riverpod/task.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskNotifier extends StateNotifier<TaskState> {
  final TaskRepositoryImpl _taskRepository;
  TaskNotifier(this._taskRepository) : super(const TaskState.initial()) {
    getTasks();
  }

  Future<void> createTask(TaskModel task) async {
    try {
      await _taskRepository.addTask(task);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> updateTask(TaskModel task) async {
    try {
      final isCompleted = !task.isCompleted;
      final updatedTask = task.copyWith(isCompleted: isCompleted);
      await _taskRepository.updateTask(updatedTask);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> deleteTask(int id) async {
    try {
      await _taskRepository.deleteTask(id);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getTasks() async {
    try {
      final tasks = await _taskRepository.getTasks();
      state = state.copyWith(tasks: tasks);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
