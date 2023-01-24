import 'package:flutter/material.dart';

class MagazinePage extends StatefulWidget {
  const MagazinePage({Key? key}) : super(key: key);

  @override
  State<MagazinePage> createState() => _MagazinePageState();
}

class _MagazinePageState extends State<MagazinePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Mags"),
      ),
    );
  }
}
