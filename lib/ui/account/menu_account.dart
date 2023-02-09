import 'package:carta_capital_app/ui/home_page.dart';
import 'package:carta_capital_app/ui/navigation/navigation_bar_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/buttons/custom_text_button.dart';
import '../../utils/default.dart';

class MenuAccount extends StatefulWidget {
  const MenuAccount({Key? key}) : super(key: key);

  @override
  State<MenuAccount> createState() => _MenuAccountState();
}

class _MenuAccountState extends State<MenuAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(pageBuilder:
                  (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return const NavigationBarUi();
              }, transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              }));
            },
            icon: const Icon(Icons.close, color: Colors.black,)),
        title: Center(
            child: RichText(
                text: TextSpan(
                    text: "Carta",
                    style: TextStyle(
                      color: DefaultConfig.defaultThemeColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts
                          .robotoSerif()
                          .fontFamily,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: "Capital",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ]))),
        actions: [
          IconButton(
              onPressed: () {
                //Add search navigation here
              },
              icon: const Icon(Icons.search, color: Colors.black,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.account_circle_outlined,size:50 ),
                    SizedBox(width: 5),
                    Text("OLÁ, MARIA."),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("SAIR DA CONTA"),
                    ],
                  ),
                )
              ],
            ),
          ),
          const CustomTextButton(
            page: '/myAccount',
            normalText: 'MINHA CONTA', isRed: true,
          ),
          Divider(
            thickness: 2,
            color: DefaultConfig.defaultGrey,
          ),
          const CustomTextButton(
            page: '/configPage',
            normalText: 'CONFIGURAÇÕES', isRed: true,
          ),
          Divider(
            thickness: 2,
            color: DefaultConfig.defaultGrey,
          ),
          const CustomTextButton(
            page: '/',
            normalText: 'FAQ', isRed: true,
          ),
          Divider(
            thickness: 2,
            color: DefaultConfig.defaultGrey,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 305.9, bottom: 15),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Image.asset("assets/images/groupedSocial.png"),
                  ),
                  Text("NOS ACOMPANHE", style: TextStyle(
                      color: DefaultConfig.defaultThemeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: DefaultConfig.defaultFont),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
