import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:tron_legacy/level.dart';
import 'package:tron_legacy/player.dart';

class TronLegacyGame extends FlameGame with HasKeyboardHandlerComponents {
  TronLegacyGame();

  late Level level;
  Player player = Player();

  String parseImage(String data) {
    return data.replaceAll('assets/images/', '');
  }

  @override
  FutureOr<void> onLoad() async {
    level = Level();
    camera = CameraComponent.withFixedResolution(
      width: 520,
      height: 360,
      world: level,
    );

    player.position = Vector2(5, 5);

    camera.follow(player);

    addAll(
      [
        camera,
        level,
        player,
      ],
    );
    return super.onLoad();
  }
}
