import 'package:app_akademie_practice/src/features/callback-funcs/ts/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 16,
            children: [
              InputCounterBox(
                color: Colors.lime,
                onLengthChanged: () {
                  debugPrint("Box 1 wurde verändert");
                },
              ),
              InputCounterBox(
                color: Colors.cyan,
                onLengthChanged: () {
                  debugPrint("Box 2 wurde verändert");
                },
              ),
              InputCounterBox(
                color: Colors.purpleAccent,
                onLengthChanged: () {
                  debugPrint("Box 3 wurde verändert");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
