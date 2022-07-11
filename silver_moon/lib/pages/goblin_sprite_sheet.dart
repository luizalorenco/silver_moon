

import 'package:bonfire/bonfire.dart';

class GoblinSpriteSheet {

  static Future<SpriteAnimation> get goblinIdleft => SpriteAnimation.load(
    'goblin_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,0),
      ),
  );

  static Future<SpriteAnimation> get goblinIdRight => SpriteAnimation.load(
    'goblin_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,0),
      ),
  );

  static Future<SpriteAnimation> get goblinIdRightRun => SpriteAnimation.load(
    'goblin_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,48),
      ),
  );

  static Future<SpriteAnimation> get goblinIdleftRun => SpriteAnimation.load(
    'goblin_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,48),
      ),
  );

  static Future<SpriteAnimation> get goblinReciveDamageleft => SpriteAnimation.load(
    'goblin_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,96),
      ),
  );

  static Future<SpriteAnimation> get goblinIReciveDamngeRight => SpriteAnimation.load(
    'goblin_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,96),
      ),
  );

}