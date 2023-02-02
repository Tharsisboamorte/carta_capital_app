import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final String edition;

  const HomeCard(
      {Key? key,
      required this.title,
      this.width = 161,
      this.height = 212,
      required this.edition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        children: [
          Image.asset("assets/images/image33.png",
              width: width, height: height),
          Column(
            children: [
              Text("EDIÇÃO $edition"),
              Text(title),
              Text(
                "06 de maio de 2022",
                style: TextStyle(color: DefaultConfig.defaultGrey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomElevatedButton(
                      page: "/magazines", label: "LEIA AGORA"),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outlined),
                    label: const Text(""),
                  )
                ],
              )
            ],
          ),
          Divider(
            thickness: 2,
            color: DefaultConfig.defaultGrey,
          )
        ],
      ),
    );
  }
}
