import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class CustomNewsCard extends StatelessWidget {
  final String title;
  final bool radioOn;
  final String page;
  final String? descriptionText;

  const CustomNewsCard(
      {super.key,
      required this.title,
      required this.radioOn,
      required this.page,
      required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Card(
          color: Colors.grey.shade100,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: radioOn ? Colors.black : DefaultConfig.borderGrey,
                  width: 1),
              borderRadius: BorderRadius.circular(5.0)),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(page, arguments: {"descriptionText" : descriptionText});
              },
              trailing: radioOn
                  ? const Icon(
                      Icons.radio_button_checked,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.radio_button_checked,
                    ),
              title: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              subtitle: Text(
                descriptionText!,
                softWrap: true,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ])),
    );
  }
}
