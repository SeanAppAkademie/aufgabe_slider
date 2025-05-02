import 'package:app_akademie_practice/src/features/bonus/builder_tip.dart';
import 'package:app_akademie_practice/src/features/bonus/complex_widget_tree.dart';
import 'package:app_akademie_practice/src/features/bonus/complex_widget_tree_2.dart';
import 'package:app_akademie_practice/src/features/bonus/layout_tips.dart';
import 'package:app_akademie_practice/src/features/bonus/overflow_tip.dart';
import 'package:app_akademie_practice/src/features/bonus/platform_aware_widgets.dart';
import 'package:app_akademie_practice/src/features/bonus/text_theme_page.dart';
import 'package:app_akademie_practice/src/theme/text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: textThemeLight),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: TextThemePage(),
    );
  }
}
