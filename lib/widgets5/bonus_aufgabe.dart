import 'package:flutter/material.dart';

class BonusAufgabe extends StatefulWidget {
  const BonusAufgabe({super.key});

  @override
  State<BonusAufgabe> createState() => _BonusAufgabeState();
}

class _BonusAufgabeState extends State<BonusAufgabe> {
  double flex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bonus Aufgabe')),
      body: Column(
        children: [
          Slider(
            value: flex,
            min: 1,
            max: 5,
            divisions: 4,
            onChanged: (neuerWert) {
              setState(() {
                flex = neuerWert;
              });
            },
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: Center(child: Text("Flex: 1")),
            ),
          ),
          Expanded(
            flex: flex.toInt(),
            child: Container(
              color: Colors.green,
              child: Center(child: Text("Flex: ${flex.toInt()}")),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
              child: Center(child: Text("Flex: 1")),
            ),
          ),
        ],
      ),
    );
  }
}
