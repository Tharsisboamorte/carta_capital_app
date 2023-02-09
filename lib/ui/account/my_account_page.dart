import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/fields/text_field.dart';
import 'package:flutter/material.dart';

import '../../components/bars/bottom_nav_bar.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPage();
}

class _MyAccountPage extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(indexPage: 4,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text("Minha Conta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 15),
              Text("Veja seu perfil"),
              SizedBox(height: 20),
              CustomTextField(label: "Nome", hintText: 'Maria da Silva Santos'),
              SizedBox(height: 20),
              CustomTextField(
                  label: "E-mail", hintText: 'mariadasilva@gmail.com'),
              SizedBox(height: 20),
              CustomTextField(label: "Gênero", hintText: 'Feminino'),
              SizedBox(height: 20),
              CustomTextField(label: "Nascimento", hintText: '06/02/1977'),
              SizedBox(height: 20),
              CustomElevatedButton(
                label: 'Alterar Minha Senha',
                page: '/PasswordReset',
              ),
              SizedBox(
                height: 10,
              ),
              Text("Seu Plano", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("O seu plano atual é o básico por 1 ano:"),
              SizedBox(height: 5),
              Text("* Acesso limitado ao conteúdo digital"),
              SizedBox(height: 5),
              Text("* Acesso as newsletters exclusivas para assinates"),
              SizedBox(height: 5),
              Text("* O seu plano vence dia 25/08/2022"),
              SizedBox(height: 5),
              Text("* Forma de pagamento: Cartão de crédito"),
              SizedBox(height: 10),
              CustomElevatedButton(label: 'Alterar Meu Plano ', page: ''),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                label: 'Alterar Forma de pagamento',
                page: "/paymentPage",
              )
            ]),
      ),
    );
  }
}

// VIVA O CLEAN CODE
// 192 linhas antes do refactore 