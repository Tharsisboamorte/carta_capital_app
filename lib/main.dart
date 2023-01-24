import 'package:flutter/material.dart';

import 'ui/account_page.dart';
import 'ui/create_account_page.dart';
import 'ui/payment_page.dart';
import 'ui/profile_page.dart';

void main() {
  runApp(const CartaCapital());
}

class CartaCapital extends StatelessWidget {
  const CartaCapital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Carta Capital",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      initialRoute: "/profile",
      routes: {
        "/profile": (_) => const ProfilePage(),
        "/account": (_) => const AccountPage(),
        "/createAccount": (_) => const CreateAccountPage(),
        "/paymentPage": (_) => const PaymentPage(),
      },
    );
  }
}
