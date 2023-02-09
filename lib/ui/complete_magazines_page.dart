import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

import '../components/bars/bottom_nav_bar.dart';
import '../components/cards/magazine_resume_card.dart';
import '../components/cards/recent_view_cards.dart';

class CompleteMagazinesPage extends StatefulWidget {
  const CompleteMagazinesPage({Key? key}) : super(key: key);

  @override
  State<CompleteMagazinesPage> createState() => _CompleteMagazinesPageState();
}

class _CompleteMagazinesPageState extends State<CompleteMagazinesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(indexPage: 1),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: 400,
                width: double.maxFinite,
                color: DefaultConfig.defaultThemeColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text("LULA EM CAMPANHA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: DefaultConfig.defaultFont,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 65, right: 27, bottom: 30),
                      child: Text(
                          "Edição 1207: Confira o conteúdo completo desta edição",
                          style: TextStyle(
                              fontFamily: DefaultConfig.newsReader,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.visible),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, right: 25.0, left: 25.0),
                      child: Divider(
                          color: DefaultConfig.borderGrey, thickness: 2),
                    ),
                    const MagazineResumeCard(
                      image: 'assets/images/mags/oAntidotoCapa.png',
                      title: 'O antídoto',
                      about:
                          'Livrar-nos de Bolsonaro é a prioridade, e Lula é a aposta certa',
                      author: 'MINO CARTA',
                      type: 'EDITORIAL',
                      page: "/completeNews",
                    ),
                    const MagazineResumeCard(
                      image: 'assets/images/mags/danielCapa.png',
                      title:
                          'O STF multa Daniel Silveira por espetáculo circense',
                      about:
                          'O STF multa Daniel Silveira por espetáculo circense após perdão...',
                      author: 'CARTA CAPITAL',
                      type: 'POLÍTICA',
                      isLocked: true,
                    ),
                    const MagazineResumeCard(
                      image: 'assets/images/mags/lulaEAlckminCapa.png',
                      title: 'O Alckimin que me interessa',
                      about:
                          'O eleitor não progressista tende a rejeitar um ex-governador paulista “comunista”, absorvido pelo PT, abduzido pela esquerda',
                      author: 'ESTHER SOLANO',
                      type: 'COLUNA',
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
                                  Text("Mais lidas",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          fontFamily:
                                              DefaultConfig.defaultFont)),
                                  SingleChildScrollView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 20.0, right: 10.0, left: 39),
                                          child: SizedBox(
                                            height: 166,
                                            width: 290,
                                            child: RecentViewCard(
                                              image:
                                                  'assets/images/mags/image27.png',
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
                                              image:
                                                  'assets/images/mags/image28.png',
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
                    const MagazineResumeCard(
                      image: 'assets/images/mags/lulaCapa.png',
                      title: 'A causa de Lula',
                      about:
                          'O ex-presidente dá início à mais decisiva campanha presidencial da sua história',
                      author: 'MINO CARTA',
                      type: 'CAPA',
                      isLocked: true,
                    ),
                    const MagazineResumeCard(
                      image: 'assets/images/mags/cornoCapa.png',
                      title: 'A República dos Bárbaros',
                      about:
                          'Os deserdados da civilidade simulam retidão moral para praticar as brutalidades dos ‘homens de bem’.',
                      author: 'CARTA CAPITAL',
                      type: 'COLUNA',
                      isLocked: true,
                    ),
                    const MagazineResumeCard(
                      image: 'assets/images/mags/lulaEPovoCapa.png',
                      title: 'Falta pouco para a eleição',
                      about:
                          'O fato é que a vasta maioria dos eleitores do País prefere Lula às dezenas de nomes que o sistema político ofereceu. O establishment, por sua vez...',
                      author: 'ESTHER SOLANO',
                      type: 'COLUNA',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: DefaultConfig()
                          .sharpElevatedButton("CARREGAR MAIS", "/", context, DefaultConfig.defaultThemeColor),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 110,
            left: 75,
            right: 50,
            child: Stack(
              children: [
                Image.asset("assets/images/mags/image15.png",
                    fit: BoxFit.cover, height: 320, width: 238),
              ],
            ),
          ),
          Positioned(
              top: 99.5,
              right: 80,
              left: 290,
              child: Image.asset("assets/images/plusbutton.png"))
        ]),
      ),
    );
  }
}
