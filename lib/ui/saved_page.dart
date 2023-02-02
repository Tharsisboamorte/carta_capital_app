import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/cards/saved_card.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: DefaultConfig.defaultThemeColor,
            height: 300,
          ),
          Container(),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 20, right: 20, bottom: 8.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(height: 22),
                Center(
                  child: Text("FAVORITOS",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          fontFamily: DefaultConfig.defaultFont
                      )),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: DefaultConfig.borderGrey,
                          width: 2,
                          strokeAlign: StrokeAlign.outside),
                      color: Colors.white),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0, left: 10, top: 10, bottom: 10),
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
                          page: "", label: "BUSCAR", isBold: true,),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const SavedCard(
                    author: "Mino Carta", title: "TESTE", edition: "1207"),
                const SizedBox(height: 25),
                const SavedCard(
                    author: "Mino Carta", title: "TESTE", edition: "1207"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
