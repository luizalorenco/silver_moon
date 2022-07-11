import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:silver_moon/main.dart';
import 'package:silver_moon/pages/goblin_sprite_sheet.dart';

class Goblin extends SimpleEnemy with ObjectCollision{
  bool canMove = true;

  Goblin(Vector2 position) 
  : super(
      position: position,
      size: Vector2(tileSize,tileSize),
      speed: 80,
      animation: SimpleDirectionAnimation(
        idleLeft: GoblinSpriteSheet.goblinIdleft,
        idleRight: GoblinSpriteSheet.goblinIdRight,
        runLeft: GoblinSpriteSheet.goblinIdleftRun, 
        runRight: GoblinSpriteSheet.goblinIdRightRun
        ),
    
  ){
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
  void update(double dt) {
    if(canMove){
      seeAndMoveToPlayer(
        closePlayer: (Player) {},
        radiusVision: tileSize * 2,
        margin: 4,
      );
    }
    super.update(dt);
  }

  @override
    void render(Canvas canvas) {
      drawDefaultLifeBar(
        canvas,
        borderWidth: 2,
        height: 2,
        align: const Offset(0, -10),
      );
      super.render(canvas);
    }

    @override
  void die() {
    removeFromParent();
    super.die();
  }

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    canMove = false;
    if(lastDirectionHorizontal == Direction.left){
      animation?.playOnce(
        GoblinSpriteSheet.goblinReciveDamageleft, 
        runToTheEnd: true,
        onFinish: (){
          canMove = true;
        }
      );
      
    }else{
      animation?.playOnce(
        GoblinSpriteSheet.goblinIReciveDamngeRight, 
        runToTheEnd: true,
        onFinish: (){
          canMove = true;
        }
      );
    }

    super.receiveDamage(attacker, damage, identify);
  }

}