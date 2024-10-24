import 'package:flutter_example_app/features/app_list/data/repositories/repositories.dart';
import 'package:flutter_example_app/features/app_list/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskRepositoryProvider = Provider<TaskRepositoryImpl>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});
