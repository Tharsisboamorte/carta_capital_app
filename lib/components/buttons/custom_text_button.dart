import 'package:flutter/material.dart';

import '../../utils/default.dart';

class CustomTextButton extends StatelessWidget {
  final String normalText;
  final String coloredText;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String page;
  final bool isUnderline;

  const CustomTextButton(
      {Key? key,
      required this.page,
      required this.normalText,
      required this.coloredText,
      required this.color,
      this.fontSize = 15,
      this.fontWeight = FontWeight.normal,
      this.isUnderline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          normalText,
          style: DefaultConfig().defaultTextStyle(
              false, false, isUnderline, DefaultConfig.defaultFont, fontSize),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, page);
          },
          child: Text(coloredText,
              style: TextStyle(
                  color: color,
                  fontFamily: DefaultConfig.defaultFont,
                  fontWeight: FontWeight.normal)),
        ),
      ],
    );
  }
}
