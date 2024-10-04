import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/utils/constants/colors_constants.dart';


class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? errorMessage;
  final bool obscureText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool iconRight;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    this.errorMessage,
    this.obscureText = false,
    this.icon,
    this.textCapitalization = TextCapitalization.none,
    required this.keyboardType,
    this.onChanged,
    this.validator,
    this.iconRight = true,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isIconVisible = false;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: colors.primary));
    final isPasswordShowHiddenIcon = (widget.obscureText &&
        widget.keyboardType == TextInputType.visiblePassword);
    Widget suffixIcon = isPasswordShowHiddenIcon
        ? widget.obscureText
            ? const Icon(Icons.visibility_off_rounded)
            : const Icon(Icons.visibility_rounded)
        : const Icon(Icons.clear);
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextField(
        enabled: true,
        controller: widget.controller,
        textCapitalization: widget.textCapitalization,
        onChanged: widget.onChanged,
        maxLength: 32,
        maxLines: 1,
        obscureText: isIconVisible,
        keyboardType: widget.keyboardType,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 16, color: colors.primary),
        decoration: InputDecoration(
          prefixIcon: widget.icon != null
              ? Icon(widget.icon, color: colors.primary)
              : null,
          isDense: true,
          labelText: widget.label,
          counterText: '',
          labelStyle: const TextStyle(color: Colors.grey),
          border: border,
          focusedBorder: border,
          suffixIcon: widget.iconRight
              ? IconButton(
                  onPressed: () {
                    if (isPasswordShowHiddenIcon) {
                      setState(() {
                        isIconVisible = !isIconVisible;
                      });
                    } else {
                      widget.controller.clear();
                    }
                  },
                  icon: suffixIcon,
                  color: colors.primary,
                )
              : null,
          floatingLabelStyle: const TextStyle(
              color: TColors.white, fontWeight: FontWeight.bold, fontSize: 18),
          enabledBorder: border,
          errorBorder: border.copyWith(
              borderSide:
                  const BorderSide(color: TColors.fieldError, width: 2.0)),
          focusedErrorBorder: border.copyWith(
              borderSide:
                  const BorderSide(color: TColors.fieldError, width: 2.0)),
          errorStyle: const TextStyle(color: TColors.fieldError, fontSize: 14),
          hintText: widget.hint,
          errorText: widget.errorMessage,
        ),
      ),
    );
  }
}
