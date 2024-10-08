import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/config/routes/router.dart';
import 'package:flutter_example_app/core/config/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExampleApp extends ConsumerWidget {
  const ExampleApp({super.key});

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
