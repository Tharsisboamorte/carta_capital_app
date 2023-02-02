import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/fields/password_text_field.dart';
import 'package:carta_capital_app/components/fields/text_field.dart';
import 'package:flutter/material.dart';

class PaymentRevisionPage extends StatelessWidget {
  const PaymentRevisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Revisão da Assinatura",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Plano selecionado: Premium (R\$ 89,99 por ano)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Método de pagamento: Cartão de crédito",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    label: "Login",
                    hintText: "marianasilva@gmail.com",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  PasswordTextField(label: "Senha"),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Revisão da Assinatura:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                      "Lorem Ipsum é simplesmente um texto fictício da indústria tipográfica e de impressão. Lorem Ipsum tem sido o texto fictício padrão da indústria desde os anos 1500, quando um impressor desconhecido pegou uma galera de tipos e os embaralhou para fazer um livro de espécimes de tipos. Ele sobreviveu não apenas a cinco séculos, mas também ao salto para a composição eletrônica, permanecendo essencialmente inalterado. Foi popularizado na década de 1960 com o lançamento de folhas Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker, incluindo versões de Lorem Ipsum."),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Politica de Privacidade",
                    style: TextStyle(
                        decoration: TextDecoration.underline, color: Colors.red),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // arrumar largura desse botão
                  SizedBox(
                    child: CustomElevatedButton(
                        page: "/paymentSucess", label: "Confirmar Pagamento"),
                  )
                ],
        )),
      ),
    );
  }
}
