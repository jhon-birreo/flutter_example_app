
import 'package:flutter_example_app/features/todo_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
