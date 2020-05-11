import 'package:flutter/material.dart';
import 'package:little_chat/pages/login_page.dart';
import 'package:little_chat/pages/register_page.dart';
import 'package:little_chat/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Little Chat',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      initialRoute: '/',
      routes: {
        Routes.Origin: (context) => Routes.pageFromRouteName(Routes.Origin),
        Routes.Register: (context) => Routes.pageFromRouteName(Routes.Register),
      },
    );
  }

  Widget myMaterial({Widget child}) => Material(
        color: Colors.black,
        child: child,
      );
}
