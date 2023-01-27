import 'package:carta_capital_app/ui/home_page.dart';
import 'package:carta_capital_app/ui/magazines_page.dart';
import 'package:carta_capital_app/ui/my_account_page.dart';
import 'package:carta_capital_app/ui/navigation/navigation_bar_ui.dart';
import 'package:carta_capital_app/ui/news_page.dart';
import 'package:carta_capital_app/ui/payment_ui/Payment_sucess_page.dart';
import 'package:carta_capital_app/ui/payment_ui/payment_page.dart';
import 'package:carta_capital_app/ui/payment_ui/payment_revison_page.dart';
import 'package:carta_capital_app/ui/saved_page.dart';
import 'package:flutter/material.dart';

import 'ui/account_page.dart';
import 'ui/create_account_page.dart';
import 'ui/profile_page.dart';

void main() {
  runApp(const CartaCapital());
}

class CartaCapital extends StatelessWidget {
  const CartaCapital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/navigator",
      routes: {
        "/profile": (_) => const ProfilePage(),
        "/home": (_) => const HomePage(),
        "/news": (_) => const NewsPage(),
        "/magazines": (_) => const MagazinePage(),
        "/saved": (_) => const SavedPage(),
        "/account": (_) => const AccountPage(),
        "/myAccount": (_) => const MyAccountPage(),
        "/createAccount": (_) => const CreateAccountPage(),
        "/payment": (_) => const PaymentPage(),
        "/paymentRevision": (_) => const PaymentRevisionPage(),
        "/paymentSucess": (_) => const PaymentSucessPage(),
        "/navigator": (_) => const NavigationBarUi(),
      },
    );
  }
}
