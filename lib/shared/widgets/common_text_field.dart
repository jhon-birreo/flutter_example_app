import 'package:flutter/material.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:gap/gap.dart';

class CommonTaskDetails extends StatelessWidget {
  const CommonTaskDetails(
      {super.key,
      required this.title,
      required this.hintText,
      this.controller,
      this.maxLines,
      this.suffixIcon,
      this.readOnly = false});
  final String title;
  final String hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final Widget? suffixIcon;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge,
        ),
        const Gap(10),
        TextField(
          readOnly: readOnly,
          controller: controller,
          onTapOutside: (_) {
            FocusManager.instance.primaryFocus?.unfocus();
            // controller.clear();
          },
          maxLines: maxLines,
          decoration:
              InputDecoration(hintText: hintText, suffixIcon: suffixIcon),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
