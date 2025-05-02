import 'dart:io';

import 'package:app_akademie_practice/src/features/bonus/stateful_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAwareWidgets extends StatefulWidget {
  const PlatformAwareWidgets({super.key});

  @override
  State<PlatformAwareWidgets> createState() => _PlatformAwareWidgetsState();
}

class _PlatformAwareWidgetsState extends State<PlatformAwareWidgets> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    Widget mySwitch() {
      return Switch.adaptive(value: switchValue, onChanged: (value) {});
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PersonalInfoSuperSuperSuperSuperCooleCard(),
            Center(child: mySwitch()),
          ],
        ),
      ),
    );
  }
}
