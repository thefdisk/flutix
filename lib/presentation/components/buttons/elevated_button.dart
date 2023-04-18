import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../styles/typography.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null ? () => onPressed?.call() : null,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.pressed)
              ? ColorName.accentColor1
              : null;
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.disabled)
              ? ColorName.accentColor3
              : ColorName.mainColor;
        }),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 46),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        textStyle: MaterialStateProperty.all(
          AppTypography(context).button1,
        ),
      ),
      child: child,
    );
  }
}
