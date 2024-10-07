import 'package:flutter_example_app/data/data.dart';
import 'package:flutter_example_app/data/repositories/repositories.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDatasource _datasource;
  TaskRepositoryImpl(this._datasource);

  @override
  Future<void> addTask(Task task) async {
    try {
      await _datasource.addTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<List<Task>> getTasks() async {
    try {
      return await _datasource.getTasks();
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> updateTask(Task task) async {
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
