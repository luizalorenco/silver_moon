import 'package:bonfire/bonfire.dart';

class GameSpriteSheet{

  static Future<SpriteAnimation> get heroIdleft => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,0),
      ),
  );

  static Future<SpriteAnimation> get heroIdRight => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,0),
      ),
  );

  static Future<SpriteAnimation> get heroIdRightRun => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,48),
      ),
  );

  static Future<SpriteAnimation> get heroIdleftRun => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,48),
      ),
  );

  static Future<SpriteAnimation> get attackRight => SpriteAnimation.load(
    'excalibur_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(32,32),
      texturePosition: Vector2(0,32),
      ),
  );

  static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
    'excalibur_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(32,32),
      texturePosition: Vector2(0,64),
      ),
  );

  static Future<SpriteAnimation> get attackTop => SpriteAnimation.load(
    'excalibur_.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(32,32),
      texturePosition: Vector2(0,96),
      ),
  );

}