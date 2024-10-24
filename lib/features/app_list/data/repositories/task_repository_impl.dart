import 'package:flutter_example_app/features/app_list/data/models/models.dart';
import 'package:flutter_example_app/features/app_list/domain/datasources/datasources.dart';
import 'package:flutter_example_app/features/app_list/domain/repositories/repositories.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDatasource _datasource;
  TaskRepositoryImpl(this._datasource);

  @override
  Future<void> addTask(TaskModel task) async {
    try {
      await _datasource.addTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    try {
      return await _datasource.getTasks();
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    try {
      await _datasource.updateTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> deleteTask(int id) async {
    try {
      await _datasource.deleteTask(id);
    } catch (e) {
      throw '$e';
    }
  }
}
