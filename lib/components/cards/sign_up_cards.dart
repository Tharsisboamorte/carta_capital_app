import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/default.dart';

class SignUpCard extends StatelessWidget {
  final String title;
  final String value;
  final String typeSignature;

  const SignUpCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.typeSignature})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: const Color(0xFFD2D2D2),
                strokeAlign: StrokeAlign.outside,
                style: BorderStyle.solid,
                width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: DefaultConfig.defaultFont)),
            Text("R\$ $value",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: DefaultConfig.defaultFont)),
            Text(typeSignature,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: DefaultConfig.defaultFont)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/createAccount");
              },
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll<Size>(Size(267, 40)),
                backgroundColor:
                     MaterialStatePropertyAll<Color>(DefaultConfig.darkerWhite),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide(
                      color: DefaultConfig.defaultThemeColor, width: 2),
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              child: Text("QUERO ESSE",
                  style: DefaultConfig().defaultTextStyle(
                      true, true, false, DefaultConfig.defaultFont, 16)),
            ),
            Row(
              children: [
                Icon(Icons.check, color: DefaultConfig.defaultThemeColor),
                const Text(
                  "Acesso ilimitado ao conteúdo digital",
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check, color: DefaultConfig.defaultThemeColor),
                const Text("Acesso as newsletter exclusivas para assinantes"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check, color: DefaultConfig.defaultThemeColor),
                const Text(
                    "Acesso ilimitado a todo o material impresso da semana"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
