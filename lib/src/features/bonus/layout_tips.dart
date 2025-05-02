import 'package:flutter/material.dart';

class LayoutTips extends StatelessWidget {
  const LayoutTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.green.withValues(alpha: (255 * 0.3)),
              child: Text('I want to be 100 % width'),
            ),
            Expanded(
              child: Container(
                color: Colors.orangeAccent.withValues(alpha: 0.5),
                child: Text('I want to fill the rest of the height'),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: (255 * 0.3)),
                ),
                child: Text('I want to be 60 % of the width'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
