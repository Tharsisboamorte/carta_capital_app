import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomIconButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.of(context).restorablePushReplacementNamed('/');
      },
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      label: Text(text,
          style: const TextStyle(fontSize: 8, color: Colors.black)),
      style: ElevatedButton.styleFrom(primary: Colors.white),
    );
  }
}
