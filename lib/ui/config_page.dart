import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/buttons/custom_text_button.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.red,
                  onPressed: () {},
                ),
                const Text("Voltar")
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Configurações",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: DefaultConfig.borderGrey,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Alterar tamanho da fonte"),
                      SizedBox(
                        width: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: DefaultConfig().circularLButton("A +"),
                      ),
                      DefaultConfig().circularLButton("A -"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: DefaultConfig.borderGrey,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Ativar Modo Noturno"),
                      SizedBox(
                        width: 170,
                      ),
                      Image.asset("assets/images/maskGroup.png"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: DefaultConfig.borderGrey,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Problemas com a assinatura"),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: DefaultConfig.borderGrey,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Reportar um erro"),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: DefaultConfig.borderGrey,
                    thickness: 2,
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
