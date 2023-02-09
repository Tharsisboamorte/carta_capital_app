import 'package:flutter/material.dart';

import '../../components/bars/bottom_nav_bar.dart';
import '../../components/bars/title_appbar.dart';
import '../../components/buttons/custom_button.dart';

class ResetSucess extends StatelessWidget {
  const ResetSucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(indexPage: 4,),
      body: Center(
        child: Column(children: const [
          SizedBox(
            height: 50,
          ),
          Icon(
            Icons.check_circle,
            size: 50,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sucesso!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Text("""Enviamos um e-mail com informações para a 
              recuperação da sua senha."""),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 40,
              width: 350,
              child: CustomElevatedButton(
                  page: "/emailConfirme", label: "Entendi"))
        ]),
      ),
    );
  }
}
