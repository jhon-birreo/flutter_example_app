import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/utils/constants/colors_constants.dart';
import 'package:flutter_example_app/core/utils/constants/sizes.dart';

class CustomTextFormField extends StatefulWidget {
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

  const CustomTextFormField({
    super.key,
    required this.label,
    this.hint,
    this.errorMessage,
    this.obscureText = false,
    this.icon,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.iconRight = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isIconVisible = false;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
        borderRadius:
            const BorderRadius.all(Radius.circular(TSizes.borderRadiusMd)),
        borderSide: BorderSide(color: colors.secondary));
    final isPasswordShowHiddenIcon = (widget.obscureText &&
        widget.keyboardType == TextInputType.visiblePassword);
    Widget suffixIcon = isPasswordShowHiddenIcon
        ? const Icon(Icons.visibility_off_rounded)
        : const Icon(Icons.visibility_rounded);
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        enabled: true,
        textCapitalization: widget.textCapitalization,
        onChanged: widget.onChanged,
        maxLength: 32,
        maxLines: 1,
        obscureText: isIconVisible,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 16, color: colors.secondary),
        decoration: InputDecoration(
          prefixIcon: widget.icon != null
              ? Icon(widget.icon, color: colors.secondary)
              : null,
          isDense: true,
          labelText: widget.label,
          counterText: '',
          labelStyle: const TextStyle(color: Colors.grey),
          border: border,
          focusedBorder: border,
          focusColor: colors.secondary,
          suffixIcon: widget.iconRight
              ? IconButton(
                  onPressed: () {
                    if (isPasswordShowHiddenIcon) {
                      setState(() {
                        isIconVisible = !isIconVisible;
                      });
                    }
                  },
                  icon: suffixIcon,
                  color: colors.secondary,
                )
              : null,
          floatingLabelStyle: TextStyle(
              color: colors.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 18),
          enabledBorder: border,
          errorBorder: border.copyWith(
              borderSide:
                  const BorderSide(color: TColors.fieldError, width: 1.0)),
          focusedErrorBorder: border.copyWith(
              borderSide:
                  const BorderSide(color: TColors.fieldError, width: 2.0)),
          errorStyle: const TextStyle(color: TColors.fieldError, fontSize: 12),
          hintText: widget.hint,
          errorText: widget.errorMessage,
        ),
      ),
    );
  }
}
