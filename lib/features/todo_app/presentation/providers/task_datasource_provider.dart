import 'package:flutter_example_app/features/todo_app/data/datasources/datasources.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskDatasourceProvider = Provider<TaskDatasourceImpl>((ref) {
  return TaskDatasourceImpl();
});
