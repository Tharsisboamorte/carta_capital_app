import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/ui/home_page.dart';
import 'package:carta_capital_app/ui/magazines_page.dart';
import 'package:carta_capital_app/ui/news_page.dart';
import 'package:carta_capital_app/ui/profile_page.dart';
import 'package:carta_capital_app/ui/saved_page.dart';
import 'package:flutter/material.dart';

import '../../utils/default.dart';

class NavigationBarUi extends StatefulWidget {
  const NavigationBarUi({Key? key}) : super(key: key);

  @override
  State<NavigationBarUi> createState() => _NavigationBarUiState();
}

class _NavigationBarUiState extends State<NavigationBarUi> {
  int _indexCurrent = 0;


  final List<Widget> _screenOptions = <Widget>[
    HomePage(),
    MagazinePage(),
    SavedPage(),
    NewsPage(),
    ProfilePage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _indexCurrent = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: _screenOptions.elementAt(_indexCurrent),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indexCurrent,
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
          ]),
    );
  }
}
