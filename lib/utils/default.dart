import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultConfig {
  static String? defaultFont = GoogleFonts.workSans().fontFamily;
  static Color defaultThemeColor = const Color(0xFFCD1719);
  static Color defaultGrey = const Color(0xFF6E6F71);
  static String? buttonFont = GoogleFonts.amiko().fontFamily;
  static EdgeInsets defaultFieldPadding = const EdgeInsets.only(left: 20.0, right: 20.0, top: 26.0, bottom: 8);
  static EdgeInsets defaultCheckPadding = const EdgeInsets.only(left: 20.0, right: 20.0, top: 26.0, bottom: 8);


  TextStyle defaultTextStyle(
      bool isBold, bool isRed, bool isUnderline, String? font, double size) {
    return TextStyle(
      decoration: isUnderline? TextDecoration.underline : null,
      fontFamily: font,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: isRed ? defaultThemeColor : Colors.black,
      fontSize: size,
    );
  }
}
