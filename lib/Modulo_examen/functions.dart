import 'package:flutiter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelperFuntions {
  String USERLOGGEDINKEY = "UserLoggedInkey";
  saveUserLoggedInDetails({bool isLoggedin}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(USERLOGGEDINKEY, isLoggedin);
  }
}
