import 'package:flutter_example_app/data/data.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TaskDatasource {
  static final TaskDatasource _instance = TaskDatasource._();

  factory TaskDatasource() => _instance;

  TaskDatasource._() {
    _initDb();
  }

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DbKeys.dbName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${DbKeys.dbTable} (
        ${DbKeys.idColumn} INTEGER PRIMARY KEY,
        ${DbKeys.titleColumn} TEXT,
        ${DbKeys.categoryColumn} TEXT,
        ${DbKeys.dateColumn} TEXT,
        ${DbKeys.timeColumn} TEXT,
        ${DbKeys.noteColumn} TEXT,
        ${DbKeys.isCompletedColumn} INTEGER
      )
    ''');
  }

  Future<void> addTask(Task task) async {
    final db = await database;
    await db.transaction(
      (txn) async {
        return await txn.insert(
          DbKeys.dbTable,
          task.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      },
    );
  }

  Future<List<Task>> getTasks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      DbKeys.dbTable,
      orderBy: '${DbKeys.idColumn} DESC',
    );
    return List.generate(
      maps.length,
      (index) => Task.fromJson(maps[index]),
    );
  }

  Future<void> updateTask(Task task) async {
    final db = await database;
    await db.update(
      DbKeys.dbTable,
      task.toJson(),
      where: '${DbKeys.idColumn} = ?',
      whereArgs: [task.id],
    );
  }

  Future<void> deleteTask(int id) async {
    final db = await database;
    await db.delete(
      DbKeys.dbTable,
      where: '${DbKeys.idColumn} = ?',
      whereArgs: [id],
    );
  }
}
