import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';

import '../components/bars/bottom_nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: TitleAppBar(),
        bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
