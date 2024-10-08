import 'package:flutter_example_app/features/todo_app/data/repositories/repositories.dart';
import 'package:flutter_example_app/features/todo_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskRepositoryProvider = Provider<TaskRepositoryImpl>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});
