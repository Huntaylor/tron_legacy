import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tron_legacy/resources/resources.dart';

void main() {
  test('tile_map assets test', () {
    expect(File(TileMap.map).existsSync(), isTrue);
  });
}
