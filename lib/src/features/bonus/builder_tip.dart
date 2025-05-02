import 'package:flutter/material.dart';

class BuilderTip extends StatelessWidget {
  const BuilderTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Osterei 1'),
            Text('Osterei 2'),
            Text('Osterei 3'),
            Text('Osterei 4'),
            Text('Osterei 5'),
            Text('Osterei 6'),
            Text('Osterei 7'),
            Text('Osterei 8'),
            Text('Osterei 9'),
            Text('Osterei 10'),
          ],
        ),
      ),
    );
  }
}
