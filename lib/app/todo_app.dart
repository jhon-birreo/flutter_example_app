import 'package:flutter/material.dart';
import 'package:flutter_example_app/config/routes/routes_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/theme/app_theme.dart';

class TodoApp extends ConsumerWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routesProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      routerConfig: routerConfig,
    );
  }
}
