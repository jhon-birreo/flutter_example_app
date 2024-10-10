import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/config/routes/router.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenuItem {
  final String title;
  final IconData icon;
  final String route;
  final int selectedIndex;

  const NavigationMenuItem({
    required this.title,
    required this.icon,
    required this.route,
    required this.selectedIndex,
  });
}

List<NavigationMenuItem> navigationMenuItems = [
  NavigationMenuItem(
    title: 'Home',
    icon: Iconsax.home,
    route: RouteLocation.home,
    selectedIndex: 0,
  ),
  NavigationMenuItem(
    title: 'Favorites',
    icon: Iconsax.heart,
    route: RouteLocation.todoList,
    selectedIndex: 1,
  ),
  NavigationMenuItem(
    title: 'Orders',
    icon: Iconsax.shopping_cart,
    route: RouteLocation.home,
    selectedIndex: 2,
  ),
  NavigationMenuItem(
    title: 'Proile',
    icon: Iconsax.user,
    route: RouteLocation.home,
    selectedIndex: 3,
  ),
];
