import 'package:flutter/material.dart';
import 'package:silver_moon/widget/buttonNewUser.dart';
import 'package:silver_moon/widget/newEmail.dart';
import 'package:silver_moon/widget/newName.dart';
import 'package:silver_moon/widget/password.dart';
import 'package:silver_moon/widget/singup.dart';
import 'package:silver_moon/widget/textNew.dart';
import 'package:silver_moon/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
