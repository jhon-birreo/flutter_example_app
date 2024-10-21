import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/config/routes/app_router.dart';
import 'package:flutter_example_app/features/navigation/data/models/models.dart';
import 'package:flutter_example_app/features/navigation/presentation/providers/navigation_menu/providers.dart';
import 'package:flutter_example_app/shared/widgets/drawer_menu.dart';
import 'package:flutter_example_app/shared/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NavigationMenuScreen extends ConsumerStatefulWidget {
  const NavigationMenuScreen(
      {super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<NavigationMenuScreen> createState() =>
      _NavigationMenuScreenState();
}

class _NavigationMenuScreenState extends ConsumerState<NavigationMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(navigationMenuProvider).selectedIndex;
    final navMenuNotifier = ref.watch(navigationMenuProvider.notifier);
    return Scaffold(
      key: scaffoldKey,
      body: widget.navigationShell,
      drawer: const DrawerMenu(),
      bottomNavigationBar: NavigationBarMenu(
        navigationMenuItems: navigationMenuItems,
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          navMenuNotifier.updateSelectedIndex(value);
          widget.navigationShell.goBranch(
            value,
            initialLocation: value == widget.navigationShell.currentIndex,
          );
        },
      ),
      drawerEnableOpenDragGesture: false,
    );
  }
}
