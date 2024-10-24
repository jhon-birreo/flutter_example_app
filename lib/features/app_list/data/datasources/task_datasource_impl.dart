import 'package:flutter_example_app/features/app_list/data/models/models.dart';
import 'package:flutter_example_app/features/app_list/domain/datasources/datasources.dart';
import 'package:flutter_example_app/shared/providers/providers.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:sqflite/sqflite.dart';

class TaskDatasourceImpl extends TaskDatasource {
  static final TaskDatasourceImpl _instance = TaskDatasourceImpl._();

  factory TaskDatasourceImpl() => _instance;

  TaskDatasourceImpl._();

  final SqfLiteProvider _dbInitializer = SqfLiteProvider();

@override
  Future<void> addTask(TaskModel task) async {
    final db = await _dbInitializer.database;
    await db.transaction((txn) async {
      return await txn.insert(
        DbKeys.dbTable,
        task.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
  }

@override
  Future<List<TaskModel>> getTasks() async {
    final db = await _dbInitializer.database;
    final List<Map<String, dynamic>> maps = await db.query(
      DbKeys.dbTable,
      orderBy: '${DbKeys.idColumn} DESC',
    );
    return List.generate(
      maps.length,
      (index) => TaskModel.fromJson(maps[index]),
    );
  }

@override
  Future<void> updateTask(TaskModel task) async {
    final db = await _dbInitializer.database;
    await db.update(
      DbKeys.dbTable,
      task.toJson(),
      where: '${DbKeys.idColumn} = ?',
      whereArgs: [task.id],
    );
  }

@override
  Future<void> deleteTask(int id) async {
    final db = await _dbInitializer.database;
    await db.delete(
      DbKeys.dbTable,
      where: '${DbKeys.idColumn} = ?',
      whereArgs: [id],
    );
  }
}