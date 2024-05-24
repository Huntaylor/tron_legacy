import 'package:flame/components.dart';
import 'package:tron_legacy/tron_legacy_game.dart';

class Player extends SpriteComponent with HasGameRef<TronLegacyGame> {
  Player({
    super.position,
    super.anchor,
    super.sprite,
  });
}
