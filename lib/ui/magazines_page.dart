import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';

import '../utils/default.dart';

class MagazinePage extends StatefulWidget {
  const MagazinePage({Key? key}) : super(key: key);

  @override
  State<MagazinePage> createState() => _MagazinePageState();
}

class _MagazinePageState extends State<MagazinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                color: DefaultConfig.defaultThemeColor,
                height: 350,
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25),
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
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, left: 10, top: 10, bottom: 10),
                            child: SizedBox(
                              height: 35,
                              width: 150,
                              child: TextField(
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  hintText: "Busque pela Edição",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black),
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text('Ano'),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined,
                                      size: 20),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black),
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text('Mês'),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined,
                                      size: 20),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Edição da Semana",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ]),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 16.0, bottom: 16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 100),
                        Center(
                            child: DefaultConfig()
                                .sharpElevatedButton("LEIA AGORA", "/", context, DefaultConfig.defaultThemeColor)),
                        const SizedBox(height: 20),
                        const Divider(
                          endIndent: 10,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Text(
                            "EDIÇÕES",
                            style: TextStyle(
                              color: DefaultConfig.defaultThemeColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: GridView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16),
                            children: [
                              Image.asset("assets/images/mags/image36.png"),
                              Image.asset("assets/images/mags/image34.png"),
                              Image.asset("assets/images/mags/image28.png"),
                              Image.asset("assets/images/mags/image35.png"),
                              Image.asset("assets/images/mags/image26.png"),
                              Image.asset("assets/images/mags/image24.png"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          endIndent: 10,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1.0),
                                        side: const BorderSide(color: Colors.black, width: 2),
                                      ))),
                              child: const Text("CARREGAR MAIS"),
                            )),
                      ])),
            ],
          ),
          Positioned(
              left: 90,
              top: 150,
              width: 220,
              height: 300,
              child: Image.asset("assets/images/mags/capaHome.png"))
        ]),
      ),
    );
  }
}
