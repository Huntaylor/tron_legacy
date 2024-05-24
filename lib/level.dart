import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_sprite_fusion/flame_sprite_fusion.dart';
import 'package:tron_legacy/player.dart';
import 'package:tron_legacy/resources/resources.dart';
import 'package:tron_legacy/tron_legacy_game.dart';
import 'package:logging/logging.dart';

class Level extends World with HasGameRef<TronLegacyGame> {
  static final Logger _log = Logger('Level Data');
  Level({
    required this.player,
    super.children,
    super.priority,
  });
  final Player player;

  late SpriteFusionTilemapComponent map;

  @override
  FutureOr<void> onLoad() async {
    map = await SpriteFusionTilemapComponent.load(
      mapJsonFile: parse(TileMap.map),
      spriteSheetFile: parseImage(SpriteSheets.spritesheet),
      anchor: Anchor.center,
    );

    _loadMap();

    await add(map);

    return super.onLoad();
  }

  String parse(String data) {
    return data.replaceAll('assets/tiles/', '');
  }

  String parseImage(String data) {
    return data.replaceAll('assets/images/', '');
  }

  void _loadMap() {
    final playerLayer = map.tilemapData.layers[0].tiles;

    _log.info(playerLayer[0].x, playerLayer[0].y);

    player
      ..position = Vector2(.5, 150)
      ..priority = 2;

    add(player);
  }
}
