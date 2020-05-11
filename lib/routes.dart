import 'package:flutter/material.dart';
import 'package:little_chat/pages/login_page.dart';
import 'package:little_chat/pages/register_page.dart';
import 'package:little_chat/pages/un-known-page.dart';

class Routes {
  static const String Origin = "/";
  static const String Register = "/register";

  static Widget pageFromRouteName(String routeName) {
    Widget child;
    switch (routeName) {
      case Origin:
        child = LoginPage();
        break;
      case Register:
        child = RegisterPage();
        break;
      default:
        child = UnKnownPage();
        break;
    }

    return Material(color: Colors.black, child: child);
  }
}
