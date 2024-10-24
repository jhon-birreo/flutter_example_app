import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/features/app_list/domain/entities/entities.dart';

class JewelleryModel extends JewelleryEntity with EquatableMixin {
  JewelleryModel({
    required super.name,
    required super.description,
    required super.price,
    required super.image,
  });

  @override
  List<Object?> get props => [name, description, image, price];
}
