import 'package:carta_capital_app/components/cards/saved_card.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

import '../components/buttons/custom_button.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: DefaultConfig.defaultThemeColor,
              height: 400,
            ),
            Column(
              children: [
                const SizedBox(height: 22),
                Center(
                  child: Text("FAVORITOS",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          fontFamily: DefaultConfig.defaultFont)),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 20, right: 20, bottom: 8.0),
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: DefaultConfig.borderGrey,
                          width: 2,
                          strokeAlign: StrokeAlign.outside),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 10.0, left: 10, top: 10, bottom: 10),
                          child: SizedBox(
                            height: 35,
                            width: 230,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: "Busque pelo seu favorito",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: CustomElevatedButton(
                            page: "",
                            label: "BUSCAR",
                            isBold: true,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 20, right: 20, bottom: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SavedCard(
                          author: "Mino Carta",
                          title: "O antídoto",
                          edition: "1207"),
                      SizedBox(height: 25),
                      SavedCard(
                          author: "Carta Capital",
                          title:
                          "O STF multa Daniel Silveira por espetáculo circense",
                          edition: "1207"),
                      SizedBox(height: 25),
                      SavedCard(
                          author: "Luiz Gonzaga Beluzo",
                          title: "Militares, entre deveres e poderes",
                          edition: "1207"),
                      SizedBox(height: 25),
                      SavedCard(
                          author: "Mino Carta", title: "O antídoto", edition: "1207"),
                      SizedBox(height: 25),
                      SavedCard(
                          author: "Marcelo Neto", title: "Rastros de um Nazista", edition: "1206"),
                      SizedBox(height: 25),
                      SavedCard(
                          author: "Marcos Coimbra",
                          title: "O problemão do capitão",
                          edition: "1205"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 45, top: 25.0, bottom: 25, right: 45),
                  child: SizedBox(
                    height: 55.5,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: const MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        backgroundColor: MaterialStatePropertyAll(
                            DefaultConfig.defaultThemeColor),
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
                Container(
                    color: DefaultConfig.defaultThemeColor,
                    height: 300,
                    width: 500,
                    child: Column(
                      children: [
                        const SizedBox(height: 25),
                        Center(
                          child: Text("Visto recentemente",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: DefaultConfig.defaultFont)),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
