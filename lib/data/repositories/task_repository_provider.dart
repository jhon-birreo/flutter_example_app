import 'package:flutter_example_app/data/data.dart';
import 'package:flutter_example_app/data/repositories/repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
 final datasource = ref.watch(taskDatasourceProvider);
 return TaskRepositoryImpl(datasource);
});