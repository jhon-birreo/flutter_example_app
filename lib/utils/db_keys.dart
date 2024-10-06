import 'package:flutter/material.dart';
import 'package:flutter_example_app/utils/utils.dart';

@immutable
class DbKeys {
  const DbKeys._();
  static const String dbTable = 'tasks';
  static const String dbName = 'tasks.db';
  static const String idColumn = TaskKeys.id;
  static const String titleColumn = TaskKeys.title;
  static const String categoryColumn = TaskKeys.category;
  static const String dateColumn = TaskKeys.date;
  static const String timeColumn = TaskKeys.time;
  static const String noteColumn = TaskKeys.note;
  static const String isCompletedColumn = TaskKeys.isCompleted;
}
