import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/utils/constants/colors_constants.dart';
import 'package:flutter_example_app/core/utils/constants/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool fontWeightBold;
  final double width;
  final double height;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = TColors.primary,
    this.textColor = TColors.white,
    this.fontWeightBold = false,
    this.width = TSizes.buttonWidthInfinity,
    this.height = TSizes.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: TSizes.fontMd,
            fontWeight: fontWeightBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
