import 'package:flutter_example_app/data/data.dart';

abstract class TaskRepository {
  Future<void> addTask(Task task);
  Future<List<Task>> getTasks();
  Future<void> updateTask(Task task);
  Future<void> deleteTask(int id);
}