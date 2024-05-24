import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:tron_legacy/level.dart';

class TronLegacyGame extends FlameGame with HasKeyboardHandlerComponents {
  TronLegacyGame();

  late Level level;

  @override
  FutureOr<void> onLoad() {
    level = Level();
    camera = CameraComponent.withFixedResolution(
      width: 520,
      height: 360,
      world: level,
    );

    addAll(
      [
        camera,
        level,
      ],
    );
    return super.onLoad();
  }
}
