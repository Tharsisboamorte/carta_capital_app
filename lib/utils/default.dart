import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultConfig {
  static String? defaultFont = GoogleFonts.workSans().fontFamily;
  static String? newsReader = GoogleFonts.newsreader().fontFamily;
  static Color defaultThemeColor = const Color(0xFFCD1719);
  static Color darkerWhite = const Color(0xFFF3F3F3);
  static Color borderGrey = const Color(0xFFD2D2D2);
  static Color dimnGrey = const Color(0xFF929292);
  static Color defaultGrey = const Color(0xFF6E6F71);
  static String? buttonFont = GoogleFonts.amiko().fontFamily;
  static EdgeInsets defaultFieldPadding =
      const EdgeInsets.only(left: 20.0, right: 20.0, top: 26.0, bottom: 8);
  static EdgeInsets defaultCheckPadding =
      const EdgeInsets.only(left: 20.0, right: 20.0, top: 26.0, bottom: 8);
  static String? defaultTextCard =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Scelerisque eleifend donec pretium lputate sapien nec sagittis aliquam. Pharetra et ultrices neque ornare aenean esmod. Eget nunc scelerisque viverra mauris in. Feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Vitae turpis massa sed elementum tempus. """;

  TextStyle defaultTextStyle(
      bool isBold, bool isRed, bool isUnderline, String? font, double size) {
    return TextStyle(
      decoration: isUnderline ? TextDecoration.underline : null,
      fontFamily: font,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: isRed ? defaultThemeColor : Colors.black,
      fontSize: size,
    );
  }

  ElevatedButton sharpElevatedButton( String title){
    return ElevatedButton(
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.zero)),
          backgroundColor: MaterialStatePropertyAll(
              DefaultConfig.defaultThemeColor),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: DefaultConfig.defaultFont),
        )
    );

  }
}
