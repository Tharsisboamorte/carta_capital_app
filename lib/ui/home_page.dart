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
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: DefaultConfig.defaultThemeColor,
                height: 300,
              ),
              Column(
                children: const [
                  HomeCard( title: "Lula em campanha")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
