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
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, page);
        },
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll<Color>(
                DefaultConfig.defaultThemeColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(
                  color: DefaultConfig.defaultThemeColor, width: 2),
            ))),
        child: Text(label,
            style: TextStyle(
                color: Colors.white, fontFamily: DefaultConfig.defaultFont)),
      ),
    );
  }
}
