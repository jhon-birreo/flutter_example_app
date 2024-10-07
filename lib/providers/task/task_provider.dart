import 'package:flutter_example_app/data/repositories/repositories.dart';
import 'package:flutter_example_app/providers/task/task.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
