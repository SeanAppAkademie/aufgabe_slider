import 'package:flutter/material.dart';

enum Allergene {
  glutenFree('Gluten Free', 'assets/icons/gluten_free.png'),
  sugarFree('Gluten Free', 'assets/icons/gluten_free.png'),
  lactoseFree('Gluten Free', 'assets/icons/gluten_free.png');

  final String iconPath;
  final String name;

  const Allergene(this.iconPath, this.name);
}

List<Allergene> allergenes = [
  Allergene.glutenFree,
  Allergene.sugarFree,
  Allergene.lactoseFree,
];

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (var allergene in allergenes)
            Row(
              children: [Image.asset(allergene.iconPath), Text(allergene.name)],
            ),
        ],
      ),
    );
  }
}
