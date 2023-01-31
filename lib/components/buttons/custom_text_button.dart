import 'package:flutter/material.dart';

import '../../utils/default.dart';

class CustomTextButton extends StatelessWidget {
  final String normalText;
  final double fontSize;
  final FontWeight fontWeight;
  final String page;
  final bool isUnderline;
  final bool isRed;
  final bool isBold;

  const CustomTextButton(
      {Key? key,
      required this.page,
      required this.normalText,
      this.fontSize = 15,
      this.fontWeight = FontWeight.normal,
      this.isUnderline = false,
      this.isRed = false,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, page);
          },
          child: Text(normalText,
              style: DefaultConfig().defaultTextStyle(isBold, isRed,
                  isUnderline, DefaultConfig.defaultFont, fontSize)),
        ),
      ],
    );
  }
}
