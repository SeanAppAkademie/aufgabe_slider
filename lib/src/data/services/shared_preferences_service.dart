import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static String darkModeKey = "isDarkMode";

  // Methode 1: ThemeMode laden
  static Future<bool> loadTheme() async {
    final preferences = await SharedPreferences.getInstance();

    bool isDarkMode = preferences.getBool(darkModeKey) ?? false;
    return isDarkMode;
  }

  // Methode 2: ThemMode speichern/ändern
  static Future<void> setTheme(bool value) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setBool(darkModeKey, value);
  }
}
