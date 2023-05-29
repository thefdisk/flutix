import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../styles/typography.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.labelText,
    this.controller,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.keyboardType,
  });

  final String? labelText;
  final TextEditingController? controller;
  final bool obscureText;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppTypography(context)
            .body1
            .copyWith(color: ColorName.accentColor3),
        floatingLabelStyle: AppTypography(context)
            .body1
            .copyWith(color: ColorName.accentColor3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: ColorName.accentColor3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: ColorName.accentColor2,
          ),
        ),
      ),
    );
  }
}
