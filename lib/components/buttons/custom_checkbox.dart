import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final String normalText;
  final String underlinedText;

  const CustomCheckBox(
      {Key? key, required this.normalText, required this.underlinedText})
      : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          checkColor: DefaultConfig.defaultThemeColor,
          activeColor: Colors.white,
          side: const BorderSide(
            strokeAlign: StrokeAlign.outside,
            width: 1,
            color: Colors.grey,
          ),
        ),
        RichText(
          text: TextSpan(
            text: widget.normalText,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: DefaultConfig.defaultFont),
            children: [
              TextSpan(
                  text: widget.underlinedText,
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontFamily: DefaultConfig.defaultFont,
                      fontWeight: FontWeight.bold
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
