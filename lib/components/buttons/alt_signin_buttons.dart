import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AltSignButton extends StatelessWidget {
  const AltSignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 45,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  strokeAlign: StrokeAlign.outside,
                  color: DefaultConfig.borderGrey,
                  width: 2)),
          child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/google.png"),
                  ),
                  Text("Fazer Login com google",
                      style: TextStyle(
                          fontSize: 9, fontFamily: DefaultConfig.defaultFont)),
                ],
              )),
        ),
        Container(
          height: 45,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  strokeAlign: StrokeAlign.outside,
                  color: DefaultConfig.borderGrey,
                  width: 2)),
          child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/apple.png"),
                  ),
                  Text("Fazer Login com apple",
                      style: TextStyle(
                          fontSize: 9, fontFamily: DefaultConfig.defaultFont)),
                ],
              )),
        ),
      ],
    );
  }
}
