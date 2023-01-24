import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/buttons/custom_checkbox.dart';
import 'package:carta_capital_app/components/fields/password_text_field.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';

import '../components/bars/bottom_nav_bar.dart';
import '../components/buttons/iconed_button.dart';
import '../components/fields/text_field.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ),
                  Text("Voltar")
                ],
              )),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Crie a sua conta",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    const Text("Já tem conta na cartCapital"),
                    const Text(
                      "Entre agora!",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.red),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(label: "Nome Completo"),
                    const SizedBox(height: 15),
                    const CustomTextField(
                        label: "E-mail", inputType: TextInputType.emailAddress),
                    const SizedBox(height: 15),
                    const CustomTextField(
                        label: "Celular", inputType: TextInputType.phone),
                    const SizedBox(height: 15),
                    const PasswordTextField(label: "Senha"),
                    const SizedBox(height: 15),
                    const PasswordTextField(label: "Confirmar Senha"),
                    const SizedBox(height: 15),
                    const CustomCheckBox(
                        normalText: "Concordo com os ",
                        underlinedText: "termos e condições"),
                    const SizedBox(height: 15),
                    const CustomCheckBox(
                        normalText: "Aceito a ",
                        underlinedText: "Política de Privacidade"),
                    const SizedBox(height: 15),
                    const CustomElevatedButton(
                        page: "/Conta", label: "Criar Conta"),
                    const Center(
                      child: Text(
                        "OU",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        CustomIconButton(
                            icon: Image(image: AssetImage("assets/google.svg")),
                            text: "Criar conta com o google"),
                        CustomIconButton(
                            icon: Image(image: AssetImage("assets/apple.svg")),
                            text: "Criar conta com a apple"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
