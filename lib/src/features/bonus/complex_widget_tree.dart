import 'package:flutter/material.dart';

// TODO: Make this complex widget tree as simple as possible

class ComplexWidgetTree extends StatelessWidget {
  const ComplexWidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 320,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.orangeAccent,
              ),
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text('Ich hoffe euer Osterhase war fleißig :)'),
            ),

            SizedBox(height: 20),
            // Row with 20 px gap between children
            Row(
              spacing: 20,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.blue.shade400),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.blue.shade300),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
