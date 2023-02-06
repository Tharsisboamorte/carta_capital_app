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
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          side: BorderSide(color: DefaultConfig.borderGrey,strokeAlign: StrokeAlign.outside)),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 15),
            Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: DefaultConfig.defaultFont)),
            const SizedBox(height: 15),
            RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: DefaultConfig.defaultFont),
                    children: [
                  TextSpan(
                    text: value,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        fontFamily: DefaultConfig.defaultFont),
                  )
                ])),
            const SizedBox(height: 15),
            Text(typeSignature,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: DefaultConfig.defaultFont)),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/createAccount");
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll<Size>(Size(267, 40)),
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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
              child: Row(
                children: [
                  Icon(Icons.check, color: DefaultConfig.defaultThemeColor),
                  const Expanded(
                    child: Text(
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                      softWrap: true,
                      "Acesso ilimitado ao conteúdo digital da CartaCapital.com.br",
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Icon(Icons.check, color: DefaultConfig.defaultThemeColor),
                  const Expanded(
                    child: Text(
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        softWrap: true,
                        "Acesso as newsletter exclusivas para assinantes"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Icon(Icons.check, color: DefaultConfig.defaultThemeColor),
                  const Expanded(
                    child: Text(
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        softWrap: true,
                        "Acesso ilimitado a todo o material impresso da semana"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
