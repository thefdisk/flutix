import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  final BuildContext context;
  final Color defaultColor = Colors.black;

  AppTypography(this.context);

  TextStyle get heading1 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: 24,
      ),
    );
  }

  TextStyle get heading2 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: 16,
      ),
    );
  }

  TextStyle get heading3 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: 14,
      ),
    );
  }

  TextStyle get subtitle1 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: 14,
      ),
    );
  }

  TextStyle get subtitle2 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: defaultColor,
        fontSize: 12,
      ),
    );
  }

  TextStyle get subtitle3 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: defaultColor,
        fontSize: 10,
      ),
    );
  }

  TextStyle get body1 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: 14,
      ),
    );
  }

  TextStyle get body2 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: 12,
      ),
    );
  }

  TextStyle get button1 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: 16,
      ),
    );
  }

  TextStyle get button2 {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: 14,
      ),
    );
  }
}
