import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tron_legacy/resources/resources.dart';

void main() {
  test('sprite_sheets assets test', () {
    expect(File(SpriteSheets.spritesheet).existsSync(), isTrue);
    expect(File(SpriteSheets.tronSimpleMap).existsSync(), isTrue);
  });
}
