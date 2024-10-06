import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/screens.dart';

import '../config/theme/app_theme.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.light,
        home: const HomeScreen());
  }
}
