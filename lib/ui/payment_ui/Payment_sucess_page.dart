import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentSucess extends StatelessWidget {
  const PaymentSucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Center(
        child: Column(children: const [
          SizedBox(
            height: 50,
          ),
          Icon(
            Icons.check_circle,
            size: 50,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Assinatura realizada!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Obá!"),
          Text("Sua senha foi alterada com sucesso"),
          SizedBox(
            height: 20,
          ),
          CustomElevatedButton(page: "", label: "Entrar na minha Conta")
        ]),
      ),
    );
  }
}
// 55 