import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../buttons/custom_button.dart';

class TitleAppBar extends StatelessWidget with PreferredSizeWidget {
  const TitleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: SizedBox(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 25,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                width: 15,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              )
            ]),
      ),
      title: Center(
          child: RichText(
              text: TextSpan(
                  text: "Carta",
                  style: TextStyle(
                      color: DefaultConfig.defaultThemeColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.robotoSerif().fontFamily,
                  ),
                  children: const <TextSpan>[
            TextSpan(
              text: "Capital",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ]
              )
          )
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 5.0, top: 15.0, bottom: 15.0, right: 5.0),
          child: CustomElevatedButton(page: "/createAccount", label: "Assine"),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
