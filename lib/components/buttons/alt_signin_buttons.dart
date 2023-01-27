import 'package:carta_capital_app/components/buttons/iconed_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AltSignButton extends StatelessWidget {
  const AltSignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        SizedBox(
            height: 50,
            child: CustomIconButton(
                icon: Icons.android, text: "Fazer Login com o google")),
        SizedBox(
          height: 50,
          child: CustomIconButton(
              icon: Icons.apple, text: "Fazer Login com apple"),
        ),
      ],
    );
  }
}
