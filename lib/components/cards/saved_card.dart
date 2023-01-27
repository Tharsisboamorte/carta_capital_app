import 'package:flutter/material.dart';

class SavedCard extends StatelessWidget {
  final String author;
  final String title;
  final String edition;
  const SavedCard({Key? key, required this.author, required this.title, required this.edition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 300,
          height: 100,
          child: Column(
            children: [
              Row(
                children: [
                  Text("EDIÇÃO $edition"),
                  const Icon(Icons.bookmark)
                ],
              ),
              Text(title),
              Row(
                children: [
                  Text("POR ${author.toUpperCase()}"),
                  Row(
                    children: const [
                      Text("VER MAIS"),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
