import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/create_task_screen.dart';
import 'package:flutter_example_app/screens/screens.dart';
import 'package:go_router/go_router.dart';

import 'router.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRouter = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.createTask,
    parentNavigatorKey: navigationKey,
    builder: CreateTaskScreen.builder,
  ),
];
