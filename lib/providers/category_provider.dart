

import 'package:flutter_example_app/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider = StateProvider.autoDispose<TaskCategory>((ref) {
  return TaskCategory.others;
});