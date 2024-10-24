import 'package:flutter_example_app/features/app_list/data/models/models.dart';

abstract class TaskDatasource {
  Future<void> addTask(TaskModel task);
  Future<List<TaskModel>> getTasks();
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(int id);
}
