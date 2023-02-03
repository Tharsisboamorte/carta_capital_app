import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/cards/custom_news_card.dart';
import '../utils/default.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "NOTIFICAÇÕES",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            CustomNewsCard(
              title: "Sua assinatura vencerá em breve.",
              radioOn: true,
              page: "/newsResume",
              descriptionText: DefaultConfig.defaultTextCard,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomNewsCard(
              title: "Chegou uma nova edição quentinha.",
              radioOn: true,
              page: '',
              descriptionText: DefaultConfig.defaultTextCard,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomNewsCard(
              title: "Essa matéria foi feita pra você.",
              radioOn: true,
              page: '',
              descriptionText: DefaultConfig.defaultTextCard,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomNewsCard(
              title: "Sua assinatura vencerá em breve.",
              radioOn: false,
              page: '',
              descriptionText: DefaultConfig.defaultTextCard,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomNewsCard(
              title: "Chegou uma nova edição quentinha.",
              radioOn: false,
              page: '',
              descriptionText: DefaultConfig.defaultTextCard,
            ),
          ],
        ),
      ),
    );
  }
}
