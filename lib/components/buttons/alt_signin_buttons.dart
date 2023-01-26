import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AltSignButton extends StatelessWidget {
  const AltSignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 10),
        SizedBox(
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).restorablePushReplacementNamed('/');
            },
            icon: const Icon(
              Icons.android,
              color: Colors.black,
            ),
            label: const Text("Fazer Login com o goole",
                style: TextStyle(fontSize: 8, color: Colors.black)),
            style: ElevatedButton.styleFrom(primary: Colors.white),
          ),
        ),
        const SizedBox(width: 40),
        SizedBox(
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).restorablePushReplacementNamed('/');
            },
            icon: const Icon(
              Icons.apple,
              color: Colors.black,
            ),
            label: const Text("Fazer Login com apple",
                style: TextStyle(fontSize: 8, color: Colors.black)),
            style: ElevatedButton.styleFrom(primary: Colors.white),
          ),
        ),
      ],
    );
  }
}
