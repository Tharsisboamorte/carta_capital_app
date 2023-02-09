import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/cards/next_issues.dart';
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
      bottomNavigationBar: const CustomBottomNavBar(indexPage: 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25.0),
              child: Text("EDITORIAL",
                  style: TextStyle(
                    color: DefaultConfig.defaultThemeColor,
                    fontSize: 12,
                    fontFamily: DefaultConfig.defaultFont,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9.0, left: 25.0),
              child: Text("O antídoto",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: DefaultConfig.newsReader,
                    fontSize: 22,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 25.0, left: 25.0),
              child: Text(
                  "Livrar-nos de Bolsonaro é a prioridade, e Lula é a aposta certa",
                  style: TextStyle(
                      fontSize: 14, fontFamily: DefaultConfig.defaultFont)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0, left: 25.0),
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
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("COMPARTILHE",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                  Image.asset("assets/images/linkIcon.png"),
                                ],
                              )),
                          const SizedBox(width: 10),
                          Image.asset("assets/images/bookmarkIcon.png")
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("Imagem: Fernando Frazão",
                  style: TextStyle(
                      color: DefaultConfig.dimnGrey,
                      fontSize: 10,
                      fontFamily: DefaultConfig.defaultFont)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 25),
              child: Text(
                "ouça esse texto!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: DefaultConfig.defaultFont),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 25, top: 13),
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child:
                          DefaultConfig().circularIconButton(Icons.play_arrow)),
                  Flexible(
                      flex: 1,
                      child: DefaultConfig().circularIconButton(Icons.stop)),
                  SizedBox(
                    width: 150,
                    child: Text("0:00/5:30",
                        style: TextStyle(
                            fontFamily: DefaultConfig.defaultFont,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)),
                  ),
                  DefaultConfig().circularLButton("A +"),
                  SizedBox(width: 25),
                  DefaultConfig().circularLButton("A -"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: DefaultConfig().firstParagraph(),
            ),
            SizedBox(
              height: 439,
              width: double.maxFinite,
              child: Image.asset(
                fit: BoxFit.fitWidth,
                "assets/images/tiradentes.png",
                width: double.maxFinite,
                height: 250,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tiradentes diante dos algozes",
                        style: TextStyle(
                            fontFamily: DefaultConfig.defaultFont,
                            fontSize: 15,
                            color: DefaultConfig.dimnGrey)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text("Imagem: Reprodução",
                        style: TextStyle(
                            fontFamily: DefaultConfig.defaultFont,
                            fontSize: 10,
                            color: DefaultConfig.dimnGrey)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: DefaultConfig().secondParagraph(),
            ),
            SizedBox(
              height: 150,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Positioned(
                      left: 25,
                      child: Image.asset(
                        "assets/images/quotes.png",
                        color: DefaultConfig.borderGrey,
                      )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 27.0, left: 105, top: 50),
                        child: DefaultConfig().quoteText(),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: DefaultConfig().thirdParagraph(),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 25.0, left: 25.0, bottom: 19),
              child: DefaultConfig().tagText(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 170,
                    height: 50,
                    child: DefaultConfig().sharpElevatedButton("ASSINE", "/",
                        context, DefaultConfig.defaultThemeColor)),
                SizedBox(
                    width: 170,
                    height: 50,
                    child: DefaultConfig().sharpElevatedButton(
                        "APOIE", "/", context, DefaultConfig.purpleButton)),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(color: DefaultConfig.borderGrey, thickness: 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Image.asset("assets/images/minoAvatar.png"),
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mino Carta",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: DefaultConfig.newsReader,
                            fontStyle: FontStyle.italic)),
                    Text("Diretor de Redação de CartaCapital",
                        style: TextStyle(
                            fontFamily: DefaultConfig.newsReader,
                            fontSize: 12,
                            color: Colors.black)),
                  ],
                ),
                const SizedBox(width: 12),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(color: DefaultConfig.borderGrey, thickness: 2),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: DefaultConfig.defaultThemeColor,
                    shape: const CircleBorder(), //<-- SEE HERE
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Image.asset("assets/images/linkIcon.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.45),
                  child: Text(
                    "COMPARTILHE",
                    style: TextStyle(
                        fontFamily: DefaultConfig.defaultFont,
                        fontSize: 13,
                        color: const Color(0xFF0B0B0B)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    width: 350,
                    height: 187,
                    child: TextField(
                      maxLines: 40,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: DefaultConfig.borderGrey)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: DefaultConfig.borderGrey)),
                          hintText: "Deixe seu comentário",
                          hintStyle: TextStyle(
                              fontFamily: DefaultConfig.defaultFont,
                              fontSize: 12)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CustomElevatedButton(page: "/", label: "Enviar")
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 20),
                  child: Text("1 Comentário",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: DefaultConfig.defaultFont)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 25.0, left: 25, right: 25),
                  child: Container(
                    height: 344,
                    width: 331,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(2)),
                        color: DefaultConfig.darkerWhite),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, bottom: 5),
                          child: Text("Paulo Sérgio",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: DefaultConfig.defaultFont,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 10),
                          child: Text("06 de maio de 2022 | 09h57",
                              style: TextStyle(
                                color: DefaultConfig.dimnGrey,
                                fontSize: 12,
                                fontFamily: DefaultConfig.defaultFont,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: DefaultConfig().comentary(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(color: DefaultConfig.borderGrey, thickness: 2),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: DefaultConfig().sharpElevatedButton("VER MAIS COMENTÁRIOS",
                  "/", context, DefaultConfig.defaultThemeColor),
            ),
            Container(
                color: DefaultConfig.defaultThemeColor,
                height: 300,
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Center(
                      child: Column(
                        children: [
                          Text("Próximas matérias",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: DefaultConfig.defaultFont)),
                          SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 20.0, right: 10.0, left: 32),
                                  child: SizedBox(
                                    height: 166,
                                    width: 290,
                                    child: NextIssueCard(
                                      image: 'assets/images/mags/image27.png',
                                      title: 'Intriga e   corrupção',
                                      edition: '1206',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: SizedBox(
                                    height: 166,
                                    width: 290,
                                    child: NextIssueCard(
                                      image: 'assets/images/mags/image26.png',
                                      title: 'Intriga e corrupção',
                                      edition: '1206',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
