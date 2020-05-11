import 'package:flutter/material.dart';
import 'package:little_chat/routes.dart';
import 'package:little_chat/widgets/sign_in.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignIn(),
        SizedBox(height: 20),
        FlatButton(
            color: Colors.white,
            onPressed: () => Navigator.pushNamed(context, Routes.Register),
            child: Text("Register"))
      ],
    );
  }
}
