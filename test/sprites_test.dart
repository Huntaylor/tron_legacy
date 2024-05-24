import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tron_legacy/resources/resources.dart';

void main() {
  test('sprites assets test', () {
    expect(File(Sprites.player).existsSync(), isTrue);
  });
}
