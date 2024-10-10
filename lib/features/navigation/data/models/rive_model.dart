import 'package:rive/rive.dart';

class RiveModel {
  final String src, artboard, stateMachineMane;
  late SMIBool? status;

  RiveModel({
    required this.src,
    required this.artboard,
    required this.stateMachineMane,
    this.status,
  });

  set setStatus(SMIBool? value) {
    status = value;
  }
}
