import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/fields/text_field.dart';
import 'package:flutter/material.dart';

import '../components/bars/bottom_nav_bar.dart';
import '../components/bars/title_appbar.dart';
import '../components/fields/password_text_field.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text(
                "Recupere sua senha",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  "Preencha os campos para que possamos redefinir a sua senha."),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5,
              ),
              PasswordTextField(
                label: 'Senha',
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 5,
              ),
              PasswordTextField(
                label: 'Confirmar Senha',
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: CustomElevatedButton(label: "Confirmar", page: ''),
              )
            ]),
      ),
    );
  }
}
