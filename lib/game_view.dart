import 'package:flame/game.dart';
import 'package:tron_legacy/tron_legacy_game.dart';
import 'package:tron_legacy/utils/app_library.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget<TronLegacyGame>.controlled(
        gameFactory: () => TronLegacyGame(),
      ),
    );
  }
}
