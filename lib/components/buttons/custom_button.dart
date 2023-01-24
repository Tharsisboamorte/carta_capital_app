import 'package:flutter/material.dart';

import '../../utils/default.dart';

class CustomElevatedButton extends StatelessWidget {
  final String page;
  final String label;

  const CustomElevatedButton(
      {Key? key, required this.page, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(page);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              DefaultConfig.defaultThemeColor),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(
                color: DefaultConfig.defaultThemeColor, width: 2),
          ))),
      child: Text(label,
          style: TextStyle(
              color: Colors.white, fontFamily: DefaultConfig.buttonFont)),
    );
  }
}
