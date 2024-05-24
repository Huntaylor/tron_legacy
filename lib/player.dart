import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:tron_legacy/resources/resources.dart';
import 'package:tron_legacy/tron_legacy_game.dart';

import 'behaviors/player/player_behavior.dart';

class Player extends SpriteComponent
    with HasGameRef<TronLegacyGame>, EntityMixin {
  Player({
    super.position,
    super.sprite,
  }) : super(anchor: Anchor.bottomRight);
  String parseImage(String data) {
    return data.replaceAll('assets/images/', '');
  }

  late final PlayerControllerBehavior controllerBehavior =
      findBehavior<PlayerControllerBehavior>();

  final Vector2 direction = Vector2(0, -1);
  double fixedDeltaTime = 1 / 60;
  double accumulatedTime = 0;
  double moveSpeed = 100;

  bool canMove = false;

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    sprite = Sprite(
      game.images.fromCache(
        parseImage(Sprites.player),
      ),
    );
    Future.delayed(
      const Duration(seconds: 3),
      () {
        canMove = true;
      },
    );

    add(
      PlayerControllerBehavior(),
    );
  }

  @override
  void update(double dt) {
    final displacement = direction.normalized() * moveSpeed * dt;
    if (canMove) {
      position.add(displacement);
    }

    super.update(dt);
  }
}
