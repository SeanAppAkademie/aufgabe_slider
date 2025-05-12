import 'package:app_akademie_practice/src/features/practice/practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          //foregroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.red),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            backgroundColor: Colors.green,
            textStyle: TextStyle(color: Colors.red),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}
