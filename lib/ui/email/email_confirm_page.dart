import 'package:flutter/material.dart';
import '../../components/bars/title_appbar.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/fields/text_field.dart';

class EmailConfirm extends StatelessWidget {
  const EmailConfirm({super.key});

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
              Text("Sucesso!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Veja abaixo o e-mail que está vinculado ao número de telefone que você solicitou."),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "Telefone",
                hintText: "ex:(11) 90000-0000",
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "O e-mail cadastrado neste número é",
                hintText: "marianasilva@gmail.com",
              ),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                  page: "/myAccount", label: "Entrar na minha Conta")
            ],
          ),
        )
      ]),
    );
  }
}
