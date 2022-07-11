import 'package:bonfire/bonfire.dart';
import 'package:silver_moon/pages/game.dart';
import 'package:silver_moon/pages/game_sprit_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision{
  GameHero(Vector2 position) 
  : super(
    position: position,
    animation: SimpleDirectionAnimation(
      idleLeft: GameSpriteSheet.heroIdleft,
      idleRight: GameSpriteSheet.heroIdRight,
      runLeft: GameSpriteSheet.heroIdleftRun,
      runRight: GameSpriteSheet.heroIdRightRun,
      ),
      speed: 100,
      size: Vector2(tileSize,tileSize),
  ) {
    setupCollision(
      CollisionConfig(
        enable: true,
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(10, 10),
            align: Vector2(3,6),
          ),
        ],
      ),
    );
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    if(event.event == ActionEvent.DOWN && event.id == 1){
      _executeAttack();
    }
    super.joystickAction(event);
  }
 
  void _executeAttack() {
    simpleAttackMelee(
      damage: 20, 
      sizePush: tileSize * 0.5,
      animationLeft: GameSpriteSheet.attackLeft,
      animationRight: GameSpriteSheet.attackRight,
      animationUp: GameSpriteSheet.attackTop,
      size: Vector2(tileSize, tileSize),
    );
  }

}