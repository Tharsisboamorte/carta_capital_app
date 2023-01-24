import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final String text;

  const CustomIconButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      style: const ButtonStyle(
          side: MaterialStatePropertyAll<BorderSide>(
              BorderSide(color: Colors.grey, width: 2)
          )
      ),
      onPressed: () {},
      label: Text(text),
    );
  }
}
