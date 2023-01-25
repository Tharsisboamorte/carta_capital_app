import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/ui/saved_page.dart';
import 'package:flutter/material.dart';

import '../components/bars/bottom_nav_bar.dart';
import 'home_page.dart';
import 'magazines_page.dart';
import 'news_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("Profile"),
        )
    );
  }
}
