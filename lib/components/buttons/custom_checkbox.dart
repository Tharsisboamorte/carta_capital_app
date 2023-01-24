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

  get normalText => normalText;

  get underlinedText => underlinedText;

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
          side: const BorderSide(
            color: Colors.grey,
          ),
        ),
        RichText(
          text: TextSpan(
            text: normalText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: DefaultConfig.defaultFont),
            children: [
              TextSpan(
                  text: underlinedText,
                  style: TextStyle(
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
