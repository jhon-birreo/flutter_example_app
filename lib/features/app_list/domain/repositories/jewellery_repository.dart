import 'package:flutter_example_app/features/app_list/data/models/models.dart';

abstract class JewelleryRepository {
  List<JewelleryModel> earnings();
  List<JewelleryModel> rings();
  List<JewelleryModel> diamond();
}
