import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/default.dart';

class NewsResume extends StatelessWidget {
  const NewsResume({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{"descritionText": ""}) as Map<String, dynamic>;
    return Scaffold(
      appBar: TitleAppBar(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Text("Voltar")
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
              color: Colors.grey.shade100,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: DefaultConfig.borderGrey, width: 1),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                ListTile(
                  trailing: const Icon(
                    Icons.radio_button_checked,
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text(
                      "Sua assinatura vencerá em breve.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  subtitle: Expanded(
                    child: Text(
                      arguments["descriptionText"],
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                const SizedBox(height: 15)
              ])),
        ),
        const SizedBox(height: 20),
        Padding(
          padding:
              const EdgeInsets.only(left: 45, top: 25.0, bottom: 25, right: 45),
          child: SizedBox(
            height: 55.5,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    )
                ),
                backgroundColor:
                    MaterialStatePropertyAll(DefaultConfig.defaultThemeColor),
              ),
              onPressed: () {},
              child: Text(
                "CARREGAR MAIS",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: DefaultConfig.defaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
