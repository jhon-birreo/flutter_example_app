import 'package:flutter/material.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider = StateProvider.autoDispose<TaskCategory>((ref) {
  return TaskCategory.others;
});

final dateProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

final timeProvider = StateProvider<TimeOfDay>((ref) {
  return TimeOfDay.now();
});
