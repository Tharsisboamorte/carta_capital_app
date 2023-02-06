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
                  children: [
                    const Text("Cancele a qualquer momento",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 28.0, top: 30.0),
                      child: Container(
                        width: 450,
                        height: 35,
                        color: DefaultConfig.defaultThemeColor,
                        child: const Center(
                          child: Text("MELHOR PREÇO",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0, left: 25, bottom: 28, top: 0.0),
                      child: SignUpCard(
                          title: "Premium",
                          value: "89,99",
                          typeSignature: "ASSINATURA ANUAL"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0, left: 25, bottom: 28, top: 0.0),
                      child: SignUpCard(
                          title: "Padrão",
                          value: "49,99",
                          typeSignature: "ASSINATURA SEMESTRAL"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0, left: 25, bottom: 28, top: 0.0),
                      child: SignUpCard(
                          title: "Básico",
                          value: "19,99",
                          typeSignature: "ASSINATURA MENSAL"),
                    ),
                    const SizedBox(height: 50)
                  ],
                )
              ],
            ),
            Positioned(
                top: 180,
                left: 50,
                right: 50,
                child: Image.asset("assets/images/mags/groupedMags.png"),
            ),
          ],
        ),
      ),
    );
  }
}