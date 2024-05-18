import 'package:app_ui/app_ui.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:tron_legacy/main_menu.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    const theme = FlexScheme.deepBlue;

    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: FlexThemeData.light(
        scheme: theme,
        textTheme: TronLegacyTheme.standard.textTheme,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: theme,
        textTheme: TronLegacyTheme.standard.textTheme,
      ),
      home: const MainMenu(),
    );
  }
}
