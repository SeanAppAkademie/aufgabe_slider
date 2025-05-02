import 'package:flutter/material.dart';

class OverflowTip extends StatelessWidget {
  const OverflowTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(width: 200, height: 300, color: Colors.blueAccent),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 300,
                color: Colors.blueAccent.shade200,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                color: Colors.blueAccent.shade100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
