import 'package:carta_capital_app/components/cards/home_cards.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                color: DefaultConfig.defaultThemeColor,
                height: 250,
                width: double.maxFinite,
                child: Column(
                  children: const [
                    SizedBox(height: 25),
                    Text(
                      "Edição da Semana",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Center(
                      child: DefaultConfig().sharpElevatedButton("LEIA AGORA")),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 16.0, bottom: 16.0),
                    child: Text(
                      "OUTRAS EDIÇÕES",
                      style: TextStyle(
                        color: DefaultConfig.defaultThemeColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const HomeCard(
                    image: "assets/images/mags/image15.png",
                    title: "Lula em campanha",
                    edition: "1207",
                  ),
                  const HomeCard(
                    image: "assets/images/mags/image17.png",
                    title: "EXCLUISIVO - Mais um nazista no Brasil.",
                    edition: "1206",
                  ),
                  const HomeCard(
                    image: "assets/images/mags/image33.png",
                    title: "Francisco contra a guerra sacrílega",
                    edition: "1205",
                  ),
                ],
              ),
              const SizedBox(height: 30),
              DefaultConfig().sharpElevatedButton("VER TODAS"),
              const SizedBox(height: 25),
              Container(
                  color: DefaultConfig.defaultThemeColor,
                  height: 300,
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Center(
                        child: Text("Mais lidas",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: DefaultConfig.defaultFont)),
                      ),
                    ],
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 16.0, bottom: 16.0),
                    child: Text(
                      "EDIÇÕES DA SEMANA",
                      style: TextStyle(
                        color: DefaultConfig.defaultThemeColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const HomeCard(
                    image: "assets/images/mags/image22.png",
                    title: "O petróleo não é nosso",
                    edition: "1203",
                  ),
                  const HomeCard(
                    image: "assets/images/mags/image24.png",
                    title: "Rebeldia X Apatia",
                    edition: "1202",
                  ),
                  const HomeCard(
                    image: "assets/images/mags/image26.png",
                    title: "Quem quer dinheiro??????",
                    edition: "1201",
                  ),
                ],
              ),
              const SizedBox(height: 30),
              DefaultConfig().sharpElevatedButton("VER TODAS"),
              const SizedBox(height: 30),
            ],
          )
        ]),
      ),
    );
  }
}
