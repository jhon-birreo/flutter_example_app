
import 'package:flutter_example_app/features/app_list/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
