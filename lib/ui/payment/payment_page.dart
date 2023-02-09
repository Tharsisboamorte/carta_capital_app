import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../components/bars/title_appbar.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/buttons/custom_dropdown_button.dart';
import '../../components/fields/text_field.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Forma de pagamento"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "É necessário informar uma forma de pagamento para continuar o seu cadastro"),
              const SizedBox(
                height: 20,
              ),
              const CustomDropDownButton(
                item: 'Cartão de crédito',
              ),
              const SizedBox(
                height: 20,
              ),

              // ICONES DO CARTÃO DE CRÉDITO
              SizedBox(
                width: 500,
                height: 50,
                child: Image.asset("assets/images/cards.png"),
              ),

              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  label: "Número do cartão",
                  hintText: "ex. 1234 4567 7894 5612"),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  label: "Nome do titular", hintText: "ex. joão silva"),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text("Validade"),
                  SizedBox(
                    width: 132,
                  ),
                  Text("CVV"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "MM/AA",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "3 ou 4 digitos",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(label: "Parcela", hintText: "1x -R\$89,99"),
              const SizedBox(
                height: 20,
              ),
              const CustomDropDownButton(item: "Paypal"),
              const SizedBox(
                height: 15,
              ),
              const CustomDropDownButton(item: "Google Pay"),
              const SizedBox(
                height: 20,
              ),
              const CustomElevatedButton(
                  page: "/PaymentRevision", label: "Confirmar"),
            ],
          ),
        ),
      ),
    );
  }
}
