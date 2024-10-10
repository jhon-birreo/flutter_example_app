import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/navigation/data/models/models.dart';
import 'package:rive/rive.dart';

class RiveIconAnimation extends StatelessWidget {
  const RiveIconAnimation(
      {super.key,
      required this.index,
      required this.selectedNavIndex,
      required this.riveOptions,
      required this.onInit,  this.height = 36, this.width = 36});
  final double height;
  final double width;
  final int index;
  final int selectedNavIndex;
  final RiveModel riveOptions;
  final Function(Artboard value) onInit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Opacity(
        opacity: selectedNavIndex == index ? 1 : 0.5,
        child: RiveAnimation.asset(
          riveOptions.src,
          artboard: riveOptions.artboard,
          onInit: (value) => onInit(value),
          // stateMachine: bottonNavItem[index].rive.stateMachineMane,
        ),
      ),
    );
  }
}
