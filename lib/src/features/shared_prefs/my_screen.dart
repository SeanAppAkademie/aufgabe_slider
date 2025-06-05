import 'package:app_akademie_practice/src/data/services/theme_mode_service.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    loadTheme();
  }

  Future<void> loadTheme() async {
    final themeMode = await ThemeModeService.loadThemeMode();

    if (themeMode == ThemeMode.dark) {
      setState(() {
        isDarkMode = true;
      });
    } else {
      setState(() {
        isDarkMode = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Dark Mode"),
            trailing: Switch(
              value: isDarkMode,
              onChanged: (newValue) {},
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ThemeMode newThemeMode =
                  isDarkMode ? ThemeMode.light : ThemeMode.dark;

              ThemeModeService.saveThemeMode(newThemeMode);
            },
            child: Text("Change Theme"),
          ),
        ],
      ),
    );
  }
}
