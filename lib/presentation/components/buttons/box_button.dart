import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

class BoxButton extends StatelessWidget {
  const BoxButton({
    super.key,
    required this.text,
    this.isSelected = false,
    this.isEnabled = true,
    this.width = 144,
    this.height = 60,
    required this.onTap,
    this.textStyle,
  });

  final bool isSelected;
  final bool isEnabled;
  final double width;
  final double height;
  final String text;
  final Function? onTap;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: (!isEnabled)
              ? const Color(0xFFE4E4E4)
              : isSelected
                  ? ColorName.accentColor2
                  : Colors.transparent,
          border: Border.all(
            color: (!isEnabled)
                ? const Color(0xFFE4E4E4)
                : isSelected
                    ? Colors.transparent
                    : const Color(0xFFE4E4E4),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
