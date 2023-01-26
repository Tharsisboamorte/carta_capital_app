import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class SignMagazine extends StatefulWidget {
  const SignMagazine({Key? key}) : super(key: key);

  @override
  State<SignMagazine> createState() => _SignMagazineState();
}

class _SignMagazineState extends State<SignMagazine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: DefaultConfig.defaultThemeColor,
                child: Column(
                  
                ),
              ),
            ],
          ),
          // Positioned(
          //   top: 280,
          //   left: 50,
          //   right: 50,
          //   child: Add Test Image in a Row,
          // ),
        ],
      ),
    );
  }
}
