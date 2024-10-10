import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/navigation/data/models/models.dart';
import 'package:flutter_example_app/features/navigation/presentation/widgets/rive_icon_animation.dart';
import 'package:flutter_example_app/features/navigation/presentation/widgets/widgets.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:rive/rive.dart';

class BottonNavWhiteAnimation extends StatefulWidget {
  const BottonNavWhiteAnimation({super.key});

  @override
  State<BottonNavWhiteAnimation> createState() =>
      _BottonNavWhiteAnimationState();
}

class _BottonNavWhiteAnimationState extends State<BottonNavWhiteAnimation> {
  List<SMIBool> riveIconInput = [];
  int selectedNavIndex = 0;
  List<StateMachineController> controllers = [];

  void animateTheIcon(int index) {
    riveIconInput[index].value = true;
    Future.delayed(const Duration(milliseconds: 100), () {
      riveIconInput[index].value = false;
    });
  }

  void riveOnInit(Artboard artboard, {required String stateMachine}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachine);
    artboard.addController(controller!);
    controllers.add(controller);
    riveIconInput.add(controller.findInput<bool>('active') as SMIBool);
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: context.colorScheme.primary.withOpacity(0.8),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.primary.withOpacity(0.8),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottonNavItem.length, (index) {
            final riveOptions = bottonNavItem[index].rive;
            return GestureDetector(
              onTap: () {
                animateTheIcon(index);
                setState(() {
                  selectedNavIndex = index;
                });
                // context.go(bottonNavItem[index].route);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedBar(isActive: selectedNavIndex == index),
                  RiveIconAnimation(
                      index: index,
                      selectedNavIndex: selectedNavIndex,
                      riveOptions: riveOptions,
                      onInit: (artboard) {
                        riveOnInit(artboard,
                            stateMachine: riveOptions.stateMachineMane);
                      })
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}