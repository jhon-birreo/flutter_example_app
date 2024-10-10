// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/features/navigation/data/models/models.dart';
import 'package:go_router/go_router.dart';

class NavigationMenuState extends Equatable {
  final int selectedIndex;
  final List<NavigationMenuItem> items;
  final StatefulNavigationShell? navigationShell;

  const NavigationMenuState({
    required this.selectedIndex,
    required this.items,
     this.navigationShell,
  });

  @override
  List<Object?> get props => [selectedIndex, items];

  NavigationMenuState copyWith({
    int? selectedIndex,
    List<NavigationMenuItem>? items,
    StatefulNavigationShell? navigationShell,
  }) {
    return NavigationMenuState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      items: items ?? this.items,
      navigationShell: navigationShell ?? this.navigationShell,
    );
  }
}
