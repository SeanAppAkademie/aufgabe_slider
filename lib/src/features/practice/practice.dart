import 'package:app_akademie_practice/src/common/consts.dart';
import 'package:app_akademie_practice/src/features/practice/page_two.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double sizeNumber = 6;
  DateTime now = DateTime.now();

  void increaseFontSize() {
    setState(() {
      sizeNumber += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(secretText, style: TextStyle(fontSize: sizeNumber)),
            const SizedBox(height: 40),
            FilledButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => PageTwo()));
              },
              child: Text('Button'),
            ),
            TextButton(onPressed: () {}, child: Text('Test')),
          ],
        ),
      ),
    );
  }
}
