import 'package:tron_legacy/utils/app_library.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: context.colorScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Tron Legacy',
                  style: context.textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton.icon(
                  iconAlignment: IconAlignment.end,
                  onPressed: () {},
                  label: const Text('Single Player'),
                  icon: const Icon(Icons.play_arrow),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton.icon(
                  iconAlignment: IconAlignment.end,
                  onPressed: () {},
                  label: const Text('Two Player'),
                  icon: const Icon(Icons.play_arrow),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton.icon(
                  iconAlignment: IconAlignment.end,
                  onPressed: () {},
                  label: const Text('Settings'),
                  icon: const Icon(Icons.settings),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
