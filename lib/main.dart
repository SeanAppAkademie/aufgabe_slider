import 'package:app_akademie_practice/practice/todo_page.dart';
import 'package:flutter/material.dart';

void main() {
  String variable = '123';

  // ** String to integer
  int integer = int.parse(variable);

  // ** String to double
  double doubleValue = double.parse(variable);

  // ** int to double
  double doubleFromInt = integer.toDouble();

  // ** double to int
  int intFromDouble = doubleFromInt.toInt();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}
