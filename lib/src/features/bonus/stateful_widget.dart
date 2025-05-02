// TODO 1) convert this to a statful widget

// TODO 2) re-name the widget

// TODO 3) add a comment that describes the widget

import 'package:flutter/material.dart';

/// This shows my super cool personal information ///
class PersonalInfoSuperSuperSuperSuperCooleCard extends StatefulWidget {
  const PersonalInfoSuperSuperSuperSuperCooleCard({super.key});

  @override
  State<PersonalInfoSuperSuperSuperSuperCooleCard> createState() =>
      _PersonalInfoSuperSuperSuperSuperCooleCardState();
}

class _PersonalInfoSuperSuperSuperSuperCooleCardState
    extends State<PersonalInfoSuperSuperSuperSuperCooleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Name: Carsten'),
        Text('Age: 100'),
        Text('Motto: ⛔ Fluttern ✅ Futtern'),
      ],
    );
  }
}
