import 'package:flutter/material.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';

class AnimatedBar extends StatelessWidget {
  final bool isActive;
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      width: isActive ? 24 : 0,
      height: 4,
      decoration: BoxDecoration(
        color: context.colorScheme.surface.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}