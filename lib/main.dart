import 'package:app_akademie_practice/src/data/services/shared_preferences_service.dart';
import 'package:app_akademie_practice/src/features/shared_prefs/my_theme_screen.dart';
import 'package:app_akademie_practice/src/theme/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    loadIsDarkMode();
  }

  Future<void> loadIsDarkMode() async {
    final bool sharedPrefsValue = await SharedPreferencesService.loadTheme();
    setState(() {
      isDarkMode = sharedPrefsValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: MyThemeScreen(
        onTap: () async {
          final newVal = isDarkMode ? false : true;
          await SharedPreferencesService.setTheme(newVal);
          setState(() {
            isDarkMode = newVal;
          });
        },
      ),
    );
  }
}
