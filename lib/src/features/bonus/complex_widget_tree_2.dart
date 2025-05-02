import 'package:flutter/material.dart';

const myPresents = [
  Present(
    name: 'Schokolade',
    description: 'Bekomme ich leider immer geschenkt 😢',
    amount: 5,
  ),
  Present(name: 'Socken', description: 'Wer kennt es nicht 😂', amount: 2),
  Present(name: 'Porsche', description: 'Brumm brumm', amount: 1),
];

class Present {
  final String name;
  final String description;
  final int amount;

  const Present({
    required this.name,
    required this.description,
    required this.amount,
  });
}

class ComplexWidgetTree2 extends StatelessWidget {
  const ComplexWidgetTree2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Meine Oster-Geschenke',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: myPresents.length,
                itemBuilder: (context, index) {
                  Present present = myPresents[index];
                  return MyPresentCard(present: myPresents[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPresentCard extends StatelessWidget {
  final Present present;
  const MyPresentCard({required this.present, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 20,
        children: [
          Text(
            "${present.amount}x",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  present.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  present.description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade800,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
