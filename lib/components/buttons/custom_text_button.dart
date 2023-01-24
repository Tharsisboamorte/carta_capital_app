import 'package:flutter/material.dart';

import '../../utils/default.dart';

class CustomTextButton extends StatelessWidget {
  final String normalText;
  final String coloredText;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String page;

  const CustomTextButton(
      {Key? key,
      required this.page,
      required this.normalText,
      required this.coloredText,
      required this.color,
      required this.fontSize,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(normalText),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, page);
          },
          child:
            Text(coloredText,
              style: TextStyle(
                  color: DefaultConfig.defaultThemeColor,
                  fontFamily: DefaultConfig.defaultFont,
                  fontWeight: FontWeight.normal)
            ),
        ),
      ],
    );
  }
}
