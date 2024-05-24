import 'package:go_router/go_router.dart';
import 'package:tron_legacy/game_view.dart';
import 'package:tron_legacy/main_menu.dart';
import 'package:tron_legacy/settings.dart';
import 'package:tron_legacy/utils/routes/route_paths.dart';

final goRoutes = GoRouter(
  initialLocation: Paths.mainMenu.goRoute,
  routes: [
    GoRoute(
      path: Paths.mainMenu.goRoute,
      builder: (context, state) => const MainMenu(),
      routes: [
        GoRoute(
          path: Paths.mainMenu.settings.goRoute,
          builder: (context, state) => const Settings(),
        ),
        GoRoute(
          path: Paths.mainMenu.gameView.goRoute,
          builder: (context, state) => const GameView(),
        ),
      ],
    ),
  ],
);
