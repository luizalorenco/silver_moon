import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:silver_moon/pages/game.dart';
import 'package:silver_moon/pages/login_page.dart';


double tileSize = 32;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Normal',
        primarySwatch: Colors.cyan,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }else if(snapshot.hasData){
            return GameScreen();
          }else if(snapshot.hasError){
            return Center(child: Text('Algo deu errado!'));
          }else{
            return LoginPage();
          }
        },
      ),
    ),
  );
}