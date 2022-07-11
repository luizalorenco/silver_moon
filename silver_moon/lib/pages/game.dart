import 'package:bonfire/bonfire.dart';
import 'package:bonfire/tiled/model/tiled_object_properties.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:silver_moon/pages/goblin.dart';
import 'package:silver_moon/pages/hero.dart';
import 'package:silver_moon/pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';






final double tileSize = 16;
class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const String _title = 'Silver Moon';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game',
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatelessWidget {
  const MyStatefulWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BonfireTiledWidget(
      overlayBuilderMap: {
        'buttons': ((context, game) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 84, 16, 11)),
            onPressed: ()async{
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(title: '',),
                        ),
                      );
            }, 
            child: Text('Perfil', style: GoogleFonts.pressStart2p(),));
        })
      },
      joystick: Joystick(
        directional: JoystickDirectional(
          color: Colors.orange,
        ),
        actions: [
          JoystickAction(
            actionId: 1,
            color: Colors.orange,
            margin: EdgeInsets.all(40), 
          ),
        ]
      ),
      map: TiledWorldMap('map/SilverMoon.json',
      objectsBuilder: {
        'Goblin': (properties)=> Goblin(properties.position)    
      },
    ),
    player: GameHero(
      Vector2(29*tileSize,8*tileSize)
    ),
    cameraConfig: CameraConfig(
      moveOnlyMapArea: true,
      zoom: 2.5,
      sizeMovementWindow: Vector2(tileSize*4, tileSize*3),
    ),
    initialActiveOverlays: [
      'buttons'      
    ],
    );
  }
}

