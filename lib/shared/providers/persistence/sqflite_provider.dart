import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfLiteProvider {
  static final SqfLiteProvider _instance = SqfLiteProvider._();

  factory SqfLiteProvider() => _instance;

  SqfLiteProvider._();

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DbKeys.dbName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
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

  // Método para cerrar la base de datos
  Future<void> closeDatabase() async {
    final db = await _database;
    if (db != null) {
      await db.close();
    }
  }
}