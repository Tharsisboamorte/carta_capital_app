import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class MagazineResumeCard extends StatelessWidget {
  final String image;
  final String title;
  final String about;
  final String type;
  final String author;
  final String page;
  final bool isLocked;

  const MagazineResumeCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.type,
      required this.author,
      required this.about,
      this.isLocked = false,
      this.page = "/"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Card(

        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
            side: BorderSide(
                color: DefaultConfig.borderGrey,
                width: 1,
                strokeAlign: StrokeAlign.outside)),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(page);
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: double.maxFinite,
              height: 200,
              child: Image.asset(image, fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Row(
                children: [
                  Text(
                    type,
                    style: DefaultConfig().defaultTextStyle(
                        true, true, false, DefaultConfig.defaultFont, 15),
                  ),
                  isLocked ? Icon(Icons.lock, color: DefaultConfig.defaultThemeColor) : const Text(""),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                softWrap: true,
                maxLines: 4,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontFamily: DefaultConfig.newsReader,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 15),
              child: Text(
                about,
                overflow: TextOverflow.visible,
                maxLines: 2,
                softWrap: true,
                style: TextStyle(
                    fontFamily: DefaultConfig.defaultFont,
                    fontSize: 14,
                    color: DefaultConfig.aboutText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text("POR $author",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: DefaultConfig.defaultFont,
                          color: DefaultConfig.dimnGrey)),
                ),
                const SizedBox(width: 50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1.0, bottom: 15.0),
                      child: Text(
                        "VER MAIS",
                        style: DefaultConfig().defaultTextStyle(
                            true, true, false, DefaultConfig.defaultFont, 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,
                          color: DefaultConfig.defaultThemeColor),
                    )
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
