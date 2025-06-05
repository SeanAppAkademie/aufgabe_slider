import 'package:app_akademie_practice/src/features/callback-funcs/bonus/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _lengthBox1 = 0;
  int _lengthBox2 = 0;
  int _lengthBox3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            InputCounterBox(
              color: Colors.lime,
              onLengthChanged: (length) {
                setState(() {
                  _lengthBox1 = length;
                });
              },
            ),
            InputCounterBox(
              color: Colors.cyan,
              onLengthChanged: (length) {
                setState(() {
                  _lengthBox2 = length;
                });
              },
            ),
            InputCounterBox(
              color: Colors.purpleAccent,
              onLengthChanged: (length) {
                setState(() {
                  _lengthBox3 = length;
                });
              },
            ),
            Text(
              "Summe aller Längen: ${_lengthBox1 + _lengthBox2 + _lengthBox3}",
            ),
          ],
        ),
      ),
    );
  }
}
