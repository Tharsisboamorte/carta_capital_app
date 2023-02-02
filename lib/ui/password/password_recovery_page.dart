import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_button.dart';
import 'package:carta_capital_app/components/fields/text_field.dart';
import 'package:flutter/material.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).restorablePushReplacementNamed("/");
                  },
                ),
                const Text("Voltar")
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text("Recupere sua senha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Preencha o campo abaixo para iniciaro processo de recuperação de senha."),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "E-mail",
                hintText: "ex: nome@email.com.br",
              ),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(page: "/PasswordSucess", label: "Validar")
            ],
          ),
        )
      ]),
    );
  }
}
