import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/fields/text_field.dart';
import 'package:carta_capital_app/utils/default.dart';
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
            children: [
              const Text("Minha Conta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 15),
              const Text("Veja seu perfil"),
              const SizedBox(height: 20),
              const CustomTextField(label: "Nome", hintText: 'Maria da Silva Santos'),
              const SizedBox(height: 20),
              const CustomTextField(
                  label: "E-mail", hintText: 'mariadasilva@gmail.com'),
              const SizedBox(height: 20),
              const CustomTextField(label: "Gênero", hintText: 'Feminino'),
              const SizedBox(height: 20),
              const CustomTextField(label: "Nascimento", hintText: '06/02/1977'),
              const SizedBox(height: 20),
              const SizedBox(
                height: 45,
                width: 320,
                child: CustomElevatedButton(
                  label: 'Alterar Minha Senha',
                  page: '/passwordReset',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Seu Plano", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("O seu plano atual é o básico por 1 ano:"),
              const SizedBox(height: 5),
              const Text("* Acesso limitado ao conteúdo digital"),
              const SizedBox(height: 5),
              const Text("* Acesso as newsletters exclusivas para assinates"),
              const SizedBox(height: 5),
              const Text("* O seu plano vence dia 25/08/2022"),
              const SizedBox(height: 5),
              const Text("* Forma de pagamento: Cartão de crédito"),
              const SizedBox(height: 10),
              const SizedBox(
                  height: 45,
                  width: 320,
                  child: CustomElevatedButton(label: 'Alterar Meu Plano ', page: '/signUp')),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 45,
                  width: 320,
                  child: DefaultConfig().blackElevatedButton(context, "/payment", "Alterar Forma de pagamento", true)),
            ]),
      ),
    );
  }
}

// VIVA O CLEAN CODE
// 192 linhas antes do refactore 