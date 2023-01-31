import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

import '../components/cards/sign_up_cards.dart';

class SignUpMagazine extends StatefulWidget {
  const SignUpMagazine({Key? key}) : super(key: key);

  @override
  State<SignUpMagazine> createState() => _SignUpMagazineState();
}

class _SignUpMagazineState extends State<SignUpMagazine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: DefaultConfig.defaultThemeColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        "ASSINATURA",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: DefaultConfig.defaultFont,
                            fontSize: 22),
                      ),
                      const SizedBox(height: 15),
                      Wrap(direction: Axis.horizontal, children: [
                        Text(
                          textAlign: TextAlign.center,
                          "Receba as edições em sua casa e tenha acesso ilimitado ao conteúdo do site.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: DefaultConfig.defaultFont,
                            fontSize: 26,
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Cancele a qualquer momento",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    SizedBox(height: 25),
                    SignUpCard(
                        title: "Premium",
                        value: "89,99",
                        typeSignature: "ASSINATURA ANUAL"),
                    SignUpCard(
                        title: "Padrão",
                        value: "49,99",
                        typeSignature: "ASSINATURA SEMESTRAL"),
                    SignUpCard(
                        title: "Básico",
                        value: "19,99",
                        typeSignature: "ASSINATURA MENSAL"),
                  ],
                )
              ],
            ),
            Positioned(
              top: 200,
              left: 50,
              right: 50,
              child: Row(
                children: [
                  Expanded(flex: 2, child: Image.asset("assets/images/image17.png")),
                  Expanded(flex: 3, child: Image.asset("assets/images/image17.png")),
                  Expanded(flex: 2, child: Image.asset("assets/images/image17.png")),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: const [
// SignUpCard(title: "Premium", value: "89,99", typeSignature: "ASSINATURA ANUAL"),
// SignUpCard(title: "Padrão", value: "49,99", typeSignature: "ASSINATURA SEMESTRAL"),
// SignUpCard(title: "Básico", value: "19,99", typeSignature: "ASSINATURA MENSAL"),
// ],
// )
