import 'package:carta_capital_app/ui/home_page.dart';
import 'package:carta_capital_app/ui/magazines_page.dart';
import 'package:carta_capital_app/ui/news_page.dart';
import 'package:carta_capital_app/ui/profile_page.dart';
import 'package:carta_capital_app/ui/saved_page.dart';
import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int indexCurrent =0;

  final List<String> _screenOptions = <String>[
    "/home",
    "/magazines",
    "/saved",
    "/news",
    "/profile",
  ];


  void _onItemTap(int index){
    setState(() {
      indexCurrent = index;
      Navigator.of(context).pushReplacementNamed("/navigator");
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: indexCurrent,
        onTap: _onItemTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: DefaultConfig.defaultThemeColor,
        unselectedItemColor: Colors.black,
        selectedFontSize: 10,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "INÍCIO",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            label: "REVISTAS",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: "SALVOS",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: "NEWS",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "PERFIL",
          ),
        ]);
  }
}
