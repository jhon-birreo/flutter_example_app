import 'package:flutter_example_app/features/app_list/data/datasources/datasources.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskDatasourceProvider = Provider<TaskDatasourceImpl>((ref) {
  return TaskDatasourceImpl();
});
