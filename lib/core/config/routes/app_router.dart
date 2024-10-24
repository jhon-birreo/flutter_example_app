import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/app_list/presentation/screens/screens.dart';
import 'package:flutter_example_app/features/favorites/presentation/screens/screens.dart';
import 'package:flutter_example_app/features/home/presentation/screens/screens.dart';
import 'package:flutter_example_app/features/navigation/presentation/screens/screens.dart';
import 'package:flutter_example_app/features/orders/presentation/screens/screens.dart';
import 'package:flutter_example_app/features/profile/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

import '../../../features/app_list/presentation/screens/jewelley_screen.dart';
import 'router.dart';

final navigationKey = GlobalKey<NavigatorState>();
final _rootNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final _rootNavigatorOrder = GlobalKey<NavigatorState>(debugLabel: 'shellOrder');
final _rootNavigatorProfile =
    GlobalKey<NavigatorState>(debugLabel: 'shellProfile');
final _rootNavigatorFavorite =
    GlobalKey<NavigatorState>(debugLabel: 'shellFavorite');
final scaffoldKey = GlobalKey<ScaffoldState>();

final appRouter = [
  navigationBarRoute,
  GoRoute(
    path: RouteLocation.todoList,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => TodoListScreen(key: state.pageKey),
  ),
  GoRoute(
    path: RouteLocation.createTask,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => CreateTaskScreen(key: state.pageKey),
  ),
  GoRoute(
    path: RouteLocation.parallax,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => ParallaxScreen(key: state.pageKey),
  ),
  GoRoute(
    path: RouteLocation.jewelleryList,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => JewelleryScreen(key: state.pageKey),
  )
];

final navigationBarRoute = StatefulShellRoute.indexedStack(
  builder: (context, state, child) =>
      NavigationMenuScreen(navigationShell: child),
  branches: <StatefulShellBranch>[
    StatefulShellBranch(
      navigatorKey: _rootNavigatorHome,
      routes: [
        GoRoute(
          path: RouteLocation.home,
          builder: (context, state) => HomeScreen(key: state.pageKey),
        ),
      ],
    ),
    StatefulShellBranch(
      navigatorKey: _rootNavigatorOrder,
      routes: [
        GoRoute(
          path: RouteLocation.order,
          builder: (context, state) => OrderScreen(key: state.pageKey),
        ),
      ],
    ),
    StatefulShellBranch(
      navigatorKey: _rootNavigatorFavorite,
      routes: [
        GoRoute(
          path: RouteLocation.favorite,
          builder: (context, state) => FavoriteScreen(key: state.pageKey),
        ),
      ],
    ),
    StatefulShellBranch(
      navigatorKey: _rootNavigatorProfile,
      routes: [
        GoRoute(
          path: RouteLocation.profile,
          builder: (context, state) => ProfileScreen(key: state.pageKey),
        ),
      ],
    )
  ],
);
