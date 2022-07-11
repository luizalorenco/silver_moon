import 'package:flutter/material.dart';
import 'package:silver_moon/widget/button.dart';
import 'package:silver_moon/widget/first.dart';
import 'package:silver_moon/widget/forgot.dart';
import 'package:silver_moon/widget/inputEmail.dart';
import 'package:silver_moon/widget/password.dart';
import 'package:silver_moon/widget/textLogin.dart';
import 'package:silver_moon/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color.fromARGB(255, 84, 16, 11), Colors.redAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


