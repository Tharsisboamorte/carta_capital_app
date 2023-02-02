import 'package:carta_capital_app/components/buttons/alt_signin_buttons.dart';
import 'package:carta_capital_app/components/buttons/custom_text_button.dart';
import 'package:carta_capital_app/components/fields/password_text_field.dart';
import 'package:carta_capital_app/components/fields/text_field.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

import '../components/buttons/custom_button.dart';
import '../components/buttons/custom_checkbox.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 29, left: 20, right: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: DefaultConfig.defaultThemeColor,
                    ),
                    const Text("Voltar")
                  ],
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: DefaultConfig.defaultFieldPadding,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Entre na sua conta",
                              style: DefaultConfig().defaultTextStyle(true,
                                  false, false, DefaultConfig.defaultFont, 19)),
                          const SizedBox(height: 8),
                          const Text("Ainda não tem cadastro no CartaCapital?"),
                          Text(
                            "Assine agora!",
                            style: DefaultConfig().defaultTextStyle(true, true,
                                true, DefaultConfig.defaultFont, 15),
                          ),
                        ])),
                Padding(
                    padding: DefaultConfig.defaultFieldPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        CustomTextField(
                            label: "E-mail",
                            hintText: "ex. nome@gmail.com.br",
                            inputType: TextInputType.emailAddress),
                        SizedBox(height: 15),
                        PasswordTextField(label: "Senha"),
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 8, left: 8),
                  child: CustomCheckBox(
                      normalText: "Concordo com os ",
                      underlinedText: "termos e condições"),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8, left: 8),
                  child: CustomCheckBox(
                      normalText: "Aceito a ",
                      underlinedText: "Política de Privacidade"),
                ),
                const SizedBox(height: 25),
                const SizedBox(
                  height: 65,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: CustomElevatedButton(
                        page: "/createAccount", label: "Entrar", isBold: true),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomTextButton(
                      normalText: "Esqueci minha senha",
                      isUnderline: true,
                      page: "/passwordReset",
                    ),
                    CustomTextButton(
                      normalText: "Esqueci meu E-mail",
                      isUnderline: true,
                      page: "/emailRecovery",
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Center(
                  child: Text(
                    "OU",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
               const Padding(
                   padding: EdgeInsets.all(8.0),
                  child: AltSignButton(),
               ), //Put Row with two buttons;
              ],
            ),
                ],
              ),
      ),
    );
  }
}
