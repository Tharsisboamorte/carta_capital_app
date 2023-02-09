import 'package:flutter/material.dart';

import '../../utils/default.dart';

class NextIssueCard extends StatelessWidget {
  final String image;
  final String title;
  final double width;
  final double height;
  final String edition;

  const NextIssueCard(
      {Key? key,
      required this.image,
      required this.title,
      this.width = 101,
      this.height = 190,
      required this.edition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          side: BorderSide(
              color: Colors.white,
              strokeAlign: StrokeAlign.outside,
              style: BorderStyle.solid,
              width: 1)),
      child: Row(
        children: [
          const SizedBox(width: 15),
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
                RichText(
                    text: TextSpan(
                        text: "POR",
                        style: TextStyle(
                            color: DefaultConfig.dimnGrey,
                            fontFamily: DefaultConfig.defaultFont),
                        children: [
                      TextSpan(
                          text: " CARTA CAPITAL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: DefaultConfig.dimnGrey,
                              fontFamily: DefaultConfig.defaultFont))
                    ])),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text("VER MAIS",
                        style: DefaultConfig().defaultTextStyle(
                            true, true, false, DefaultConfig.defaultFont, 10)),
                    Icon(Icons.arrow_forward_ios_outlined,
                        color: DefaultConfig.defaultThemeColor)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
