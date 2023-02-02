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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OUTRAS EDIÇÕES",
                    style: TextStyle(
                        color: DefaultConfig.defaultThemeColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  const HomeCard(title: "Lula em campanha", edition: "1007",)
                ],
              ),
            ],
          ),
          Positioned(
            left: 50,
            right: 50,
            child: Image.asset(
              "assets/images/image17.png",
            ),
          ),
        ]),
      ),
    );
  }
}
