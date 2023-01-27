import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SharedPref {


  loadSavedNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt("saved_index");
  }

  saveNumber(int number) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('saved_index', number);
  }


}