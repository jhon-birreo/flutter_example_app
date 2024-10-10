import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/navigation/data/models/models.dart';

class NavigationBarMenu extends StatelessWidget {
  const NavigationBarMenu({
    super.key,
    required this.onDestinationSelected,
    required this.navigationMenuItems,
    required this.selectedIndex,
  });

  final Function(int value) onDestinationSelected;
  final List<NavigationMenuItem> navigationMenuItems;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 80,
      elevation: 0,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: List.generate(
        navigationMenuItems.length,
        (index) => NavigationDestination(
          icon: Icon(navigationMenuItems[index].icon),
          label: navigationMenuItems[index].title,
        ),
      ),
    );
  }
}
