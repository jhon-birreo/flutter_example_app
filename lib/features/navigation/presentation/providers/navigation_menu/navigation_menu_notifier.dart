import 'package:flutter_example_app/features/navigation/data/models/models.dart';
import 'package:flutter_example_app/features/navigation/presentation/providers/navigation_menu/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NavigationMenuNotifier extends StateNotifier<NavigationMenuState> {
  NavigationMenuNotifier() : super(const NavigationMenuState(selectedIndex: 0, items: [], navigationShell: null));

  void updateSelectedIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }

  void updateItems(List<NavigationMenuItem> items) {
    state = state.copyWith(items: items);
  }

  void updateNavigationShell(StatefulNavigationShell navigationShell) {
    state = state.copyWith(navigationShell: navigationShell);
  }

}