import 'package:flame/components.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:tron_legacy/player.dart';
import 'package:tron_legacy/tron_legacy_game.dart';

class PlayerControllerBehavior extends Behavior<Player>
    with HasGameRef<TronLegacyGame>, KeyboardHandler {
  static final _log = Logger('Player Control Event');

  LogicalKeyboardKey? lastKeyPressed;

  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    final isKeyRepeat = event is KeyRepeatEvent;
    if (!isKeyRepeat) {
      if (event.logicalKey == LogicalKeyboardKey.keyA ||
          event.logicalKey == LogicalKeyboardKey.keyD) {
        if (event.logicalKey == LogicalKeyboardKey.keyA) {
          _log.info("'A' has been pressed",
              'Key before was: ${lastKeyPressed?.keyLabel ?? 'No previous key found'}');
          // Key A is pressed

          if (lastKeyPressed != LogicalKeyboardKey.keyD) {
            movePlayer(keyPressed: event.logicalKey);
          }

          lastKeyPressed = event.logicalKey;
        } else {
          _log.info("'D' has been pressed",
              'Key before was: ${lastKeyPressed?.keyLabel ?? 'No previous key found'}');

          if (lastKeyPressed != LogicalKeyboardKey.keyA) {
            movePlayer(keyPressed: event.logicalKey);
          }

          lastKeyPressed = event.logicalKey;
        }
      } else if (event.logicalKey == LogicalKeyboardKey.keyW ||
          event.logicalKey == LogicalKeyboardKey.keyS) {
        if (event.logicalKey == LogicalKeyboardKey.keyW) {
          _log.info("'W' has been pressed",
              'Key before was: ${lastKeyPressed?.keyLabel ?? 'No previous key found'}');

          if (lastKeyPressed != LogicalKeyboardKey.keyS) {
            movePlayer(keyPressed: event.logicalKey);
          }

          lastKeyPressed = event.logicalKey;
        } else {
          _log.info("'S' has been pressed",
              'Key before was: ${lastKeyPressed?.keyLabel ?? 'No previous key found'}');

          if (lastKeyPressed != LogicalKeyboardKey.keyW) {
            movePlayer(keyPressed: event.logicalKey);
          }

          lastKeyPressed = event.logicalKey;
        }
      }
    }
    return super.onKeyEvent(event, keysPressed);
  }

  void movePlayer({required LogicalKeyboardKey? keyPressed}) {
    switch (keyPressed) {
      case LogicalKeyboardKey.keyA:
        parent.direction
          ..x = -1
          ..y = 0;
      case LogicalKeyboardKey.keyD:
        parent.direction
          ..x = 1
          ..y = 0;
      case LogicalKeyboardKey.keyS:
        parent.direction
          ..x = 0
          ..y = 1;
      case LogicalKeyboardKey.keyW:
        parent.direction
          ..x = 0
          ..y = -1;
    }
  }
}
