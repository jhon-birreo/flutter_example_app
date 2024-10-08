import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/todo_app/presentation/screens/screens.dart';

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
