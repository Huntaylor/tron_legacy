import 'dart:async';
import 'package:flame/components.dart';
import 'package:tron_legacy/resources/resources.dart';
import 'package:tron_legacy/tron_legacy_game.dart';

class Player extends SpriteComponent with HasGameRef<TronLegacyGame> {
  Player({
    super.position,
    super.anchor,
    super.sprite,
  });

  @override
  FutureOr<void> onLoad() {
    sprite = Sprite(game.images.fromCache(Sprites.player));
    return super.onLoad();
  }
}
