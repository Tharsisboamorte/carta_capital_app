import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class SavedCard extends StatelessWidget {
  final String author;
  final String title;
  final String edition;

  const SavedCard(
      {Key? key,
      required this.author,
      required this.title,
      required this.edition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: DefaultConfig.borderGrey,
              width: 2,
              strokeAlign: StrokeAlign.outside),
          color: Colors.white),
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: DefaultConfig.borderGrey),
          borderRadius: BorderRadius.circular(20),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "EDIÇÃO $edition",
                        style: DefaultConfig().defaultTextStyle(
                            true, true, false, DefaultConfig.defaultFont, 12),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(title,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.visible,
                        style: DefaultConfig().defaultTextStyle(
                            true, false, false, DefaultConfig.defaultFont, 20))
                  ],
                ),
              ),
              Icon(Icons.bookmark,
                  color: DefaultConfig.defaultThemeColor, size: 40),
            ],
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("POR ${author.toUpperCase()}"),
            Row(
              children: [
                Text(
                  "VER MAIS",
                  style: DefaultConfig().defaultTextStyle(
                      true, true, false, DefaultConfig.defaultFont, 12),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: DefaultConfig.defaultThemeColor,
                ),
              ],
            )
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}
