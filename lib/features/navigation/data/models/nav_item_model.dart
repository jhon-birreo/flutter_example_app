import 'package:flutter_example_app/core/config/routes/router.dart';
import 'package:flutter_example_app/features/navigation/data/models/models.dart';

class NavItemModel {
  final String title;
  final RiveModel rive;
  final String route;

  NavItemModel({
    required this.title,
    required this.rive,
    required this.route,
  });
}

List<NavItemModel> bottonNavItem = [
  NavItemModel(
    title: 'Home',
    rive: RiveModel(
      src: 'assets/icons/rive/animated_icon.riv',
      artboard: 'HOME',
      stateMachineMane: 'HOME_interactivity',
    ),
    route: RouteLocation.home,
  ),
  NavItemModel(
    title: 'Seatch',
    rive: RiveModel(
      src: 'assets/icons/rive/animated_icon.riv',
      artboard: 'SEARCH',
      stateMachineMane: 'SEARCH_Interactivity',
    ),
    route: RouteLocation.todoList,
  ),
  NavItemModel(
    title: 'TIMER',
    rive: RiveModel(
      src: 'assets/icons/rive/animated_icon.riv',
      artboard: 'TIMER',
      stateMachineMane: 'TIMER_Interactivity',
    ),
    route: RouteLocation.home,
  ),
  NavItemModel(
    title: 'Notification',
    rive: RiveModel(
      src: 'assets/icons/rive/animated_icon.riv',
      artboard: 'BELL',
      stateMachineMane: 'BELL_Interactivity',
    ),
    route: RouteLocation.home,
  ),
  NavItemModel(
    title: 'Profile',
    rive: RiveModel(
      src: 'assets/icons/rive/animated_icon.riv',
      artboard: 'USER',
      stateMachineMane: 'USER_Interactivity',
    ),
    route: RouteLocation.home,
  ),
];
