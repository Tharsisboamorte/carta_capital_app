import 'package:carta_capital_app/components/buttons/alt_signin_buttons.dart';
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
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text("Crie a sua conta",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  Text("Já tem conta na cartCapital"),
                  Text(
                    "Entre agora!",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.red),
                  ),
                  SizedBox(height: 20),
                  CustomTextField(label: "Nome Completo"),
                  SizedBox(height: 15),
                  CustomTextField(
                      label: "E-mail", inputType: TextInputType.emailAddress),
                  SizedBox(height: 15),
                  CustomTextField(
                      label: "Celular", inputType: TextInputType.phone),
                  SizedBox(height: 15),
                  PasswordTextField(label: "Senha"),
                  SizedBox(height: 15),
                  PasswordTextField(label: "Confirmar Senha"),
                  SizedBox(height: 15),
                  CustomCheckBox(
                      normalText: "Concordo com os ",
                      underlinedText: "termos e condições"),
                  CustomCheckBox(
                      normalText: "Aceito a ",
                      underlinedText: "Política de Privacidade"),
                  SizedBox(height: 25),
                  CustomElevatedButton(
                      page: "/payment", label: "Criar Conta"),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      "OU",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 25),
                  AltSignButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
