import 'package:flutter/material.dart';

// Schritt 1: StatefulWidget erstellen
class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // Schritt 2: TextEditingController erstellen
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfields"),
        backgroundColor: Colors.orangeAccent.shade200,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              // Schritt 3: controller im Textfield übergeben
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: print the text of the text field

                // Schritt 4: Auf den Wert des Textfield zugreifen
                print(controller.text);
              },
              child: Text("Klick Mich"),
            ),
          ],
        ),
      ),
    );
  }
}
