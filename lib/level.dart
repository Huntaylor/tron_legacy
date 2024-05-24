import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_sprite_fusion/flame_sprite_fusion.dart';
import 'package:tron_legacy/resources/resources.dart';
import 'package:tron_legacy/tron_legacy_game.dart';

class Level extends World with HasGameRef<TronLegacyGame> {
  Level();

  late SpriteFusionTilemapComponent map;

  @override
  FutureOr<void> onLoad() async {
    map = await SpriteFusionTilemapComponent.load(
      mapJsonFile: parse(TileMap.map),
      spriteSheetFile: parseImage(SpriteSheets.spritesheet),
      anchor: Anchor.center,
    );

    await add(map);

    return super.onLoad();
  }

  String parse(String data) {
    return data.replaceAll('assets/tiles/', '');
  }

  String parseImage(String data) {
    return data.replaceAll('assets/images/', '');
  }
}
