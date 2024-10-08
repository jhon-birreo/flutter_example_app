import 'package:flutter_example_app/features/todo_app/data/models/models.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskModel task);
  Future<List<TaskModel>> getTasks();
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(int id);
}
