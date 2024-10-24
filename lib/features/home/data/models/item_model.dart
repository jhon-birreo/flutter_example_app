import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/core/config/routes/route_location.dart';
import 'package:flutter_example_app/features/home/domain/entities.dart';

class ItemModel extends ItemEntity with EquatableMixin {
  ItemModel({required super.title, required super.route});

  @override
  List<Object?> get props => [title, route];

  @override
  String toString() {
    return 'ItemModel{title: $title, route: $route}';
  }

}

  List<ItemModel> itemList = [
    ItemModel(title: 'Jewellery', route: RouteLocation.jewelleryList),
    ItemModel(title: 'To-Do List', route: RouteLocation.todoList),
    ItemModel(title: 'Create Task', route: RouteLocation.createTask),
    ItemModel(title: 'Parallax', route: RouteLocation.parallax),
  ];