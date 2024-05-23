import 'package:app_ui/app_ui.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:tron_legacy/utils/routes/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    const theme = FlexScheme.deepBlue;

    return MaterialApp.router(
      routerConfig: goRoutes,
      themeMode: ThemeMode.system,
      theme: FlexThemeData.light(
        scheme: theme,
        textTheme: TronLegacyTheme.standard.textTheme,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: theme,
        textTheme: TronLegacyTheme.standard.textTheme,
      ),
    );
  }
}
