import 'dart:async';
import 'dart:developer' as dev;

import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:tron_legacy/tron_legacy_game.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  Logger.root.level = kDebugMode ? Level.FINE : Level.INFO;
  Logger.root.onRecord.listen((record) {
    dev.log(
      record.message,
      time: record.time,
      level: record.level.value,
      name: record.loggerName,
      zone: record.zone,
      error: record.error,
      stackTrace: record.stackTrace,
    );
  });
  FlutterError.onError = (details) {
    dev.log(details.exceptionAsString(), stackTrace: details.stack);
  };

  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    runApp(
      GameWidget(game: TronLegacyGame()),
    );
  } else {
    runApp(await builder());
  }
}
