import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class CompleteNews extends StatefulWidget {
  const CompleteNews({Key? key}) : super(key: key);

  @override
  State<CompleteNews> createState() => _CompleteNewsState();
}

class _CompleteNewsState extends State<CompleteNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, right: 25.0),
              child: Text("EDITORIAL",
                  style: TextStyle(
                    color: DefaultConfig.defaultThemeColor,
                    fontSize: 12,
                    fontFamily: DefaultConfig.defaultFont,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, right: 25.0),
              child: Text("O antídoto",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: DefaultConfig.newsReader,
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, right: 25.0, left: 25.0),
              child: Text(
                  "Livrar-nos de Bolsonaro é a prioridade, e Lula é a aposta certa",
                  style: TextStyle(
                      fontSize: 14, fontFamily: DefaultConfig.defaultFont)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, right: 25.0),
              child: Text("POR MINO CARTA | 11.05.2022 - 06h27",
                  style: TextStyle(
                    fontFamily: DefaultConfig.defaultFont,
                    color: DefaultConfig.dimnGrey,
                    fontSize: 11,
                  )),
            ),
            SizedBox(
              height: 280,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Image.asset(
                    fit: BoxFit.fitWidth,
                    "assets/images/mags/oAntidotoCapa.png",
                    width: double.maxFinite,
                    height: 250,
                  ),
                  Positioned(
                      right: 15,
                      bottom: 26,
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      DefaultConfig.defaultThemeColor),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          side: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                              child: Row(
                                children: const [
                                  Text("COMPARTILHE",
                                      style: TextStyle(fontSize: 10)),
                                  Icon(Icons.link)
                                ],
                              )),
                          const SizedBox(width: 10),
                          Image.asset("assets/images/bookmarkIcon.png")
                        ],
                      ))
                ],
              ),
            ),
            Center(
              child: Text("Imagem: Fernando Frazão",
                  style: TextStyle(
                      color: DefaultConfig.dimnGrey,
                      fontSize: 10,
                      fontFamily: DefaultConfig.defaultFont)),
            ),
            Text("ouça esse texto!"),
            Row(
              children: [
                Text(""),
              ],
            ),
            Text("data"),
            SizedBox(),
            Text("data"),
            Text("data"),
            Row(),
            Row(),
            Column(),
            Column(),
            Text("data"),
            Column(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
