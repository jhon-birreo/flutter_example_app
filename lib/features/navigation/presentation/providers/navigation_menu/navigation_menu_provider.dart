import 'package:flutter_example_app/features/navigation/presentation/providers/navigation_menu/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationMenuProvider =
    StateNotifierProvider<NavigationMenuNotifier, NavigationMenuState>((ref) {
  return NavigationMenuNotifier();
});
