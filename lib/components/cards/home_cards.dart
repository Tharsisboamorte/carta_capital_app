import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String image;
  final String title;
  final double width;
  final double height;
  final String edition;

  const HomeCard(
      {Key? key,
      required this.title,
      this.width = 101,
      this.height = 190,
      required this.edition,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: width, height: height),
        const SizedBox(width: 18),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("EDIÇÃO $edition",
                  style: DefaultConfig().defaultTextStyle(
                      true, true, false, DefaultConfig.defaultFont, 12)),
              const SizedBox(height: 12),
              Text(
                title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.visible,
                style: DefaultConfig().defaultTextStyle(
                    true, false, false, DefaultConfig.newsReader, 18),
              ),
              const SizedBox(height: 12),
              Text(
                "06 DE MAIO DE 2022",
                style: TextStyle(
                    color: DefaultConfig.dimnGrey,
                    fontFamily: DefaultConfig.defaultFont),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomElevatedButton(
                      page: "/magazines", label: "LEIA AGORA"),
                  const SizedBox(width: 12),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/images/plusbutton.png"),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
