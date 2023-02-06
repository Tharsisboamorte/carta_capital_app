import 'package:carta_capital_app/components/cards/home_cards.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

import '../components/cards/recent_view_cards.dart';

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
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 110),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                        child:
                            DefaultConfig().sharpElevatedButton("LEIA AGORA")),
                    const SizedBox(height: 35),
                    Text(
                      "OUTRAS EDIÇÕES",
                      style: TextStyle(
                        color: DefaultConfig.defaultThemeColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const HomeCard(
                      image: "assets/images/mags/image15.png",
                      title: "Lula em campanha",
                      edition: "1207",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 0.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 1),
                    ),
                    const HomeCard(
                      image: "assets/images/mags/image17.png",
                      title: "EXCLUISIVO - Mais um nazista no Brasil.",
                      edition: "1206",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 0.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 1),
                    ),
                    const HomeCard(
                      image: "assets/images/mags/image33.png",
                      title: "Francisco contra a guerra sacrílega",
                      edition: "1205",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 0.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 1),
                    ),
                  ],
                ),
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
                        child: Column(
                          children: [
                            Text("Mais lidas",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: DefaultConfig.defaultFont)),
                            SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20.0, right: 10.0, left: 32),
                                      child: SizedBox(
                                        height: 166,
                                        width: 290,
                                        child: RecentViewCard(
                                          image: 'assets/images/mags/image27.png',
                                          title: 'Intriga e corrupção',
                                          edition: '1206',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: SizedBox(
                                        height: 166,
                                        width: 290,
                                        child: RecentViewCard(
                                          image: 'assets/images/mags/image27.png',
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
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      "EDIÇÕES DA SEMANA",
                      style: TextStyle(
                        color: DefaultConfig.defaultThemeColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const HomeCard(
                      image: "assets/images/mags/image22.png",
                      title: "O petróleo não é nosso",
                      edition: "1203",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 0.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 1),
                    ),
                    const HomeCard(
                      image: "assets/images/mags/image24.png",
                      title: "Rebeldia X Apatia",
                      edition: "1202",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 0.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 1),
                    ),
                    const HomeCard(
                      image: "assets/images/mags/image26.png",
                      title: "Quem quer dinheiro??????",
                      edition: "1201",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 0.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              DefaultConfig().sharpElevatedButton("VER TODAS"),
              const SizedBox(height: 30),
            ],
          ),
          Positioned(
              left: 90,
              top: 65,
              width: 220,
              height: 300,
              child: Image.asset("assets/images/mags/capaHome.png"))
        ]),
      ),
    );
  }
}
