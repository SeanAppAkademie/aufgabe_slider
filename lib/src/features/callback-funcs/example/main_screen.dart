import 'package:flutter/material.dart';

class ExampleMainScreen extends StatefulWidget {
  const ExampleMainScreen({super.key});

  @override
  State<ExampleMainScreen> createState() => _ExampleMainScreenState();
}

class _ExampleMainScreenState extends State<ExampleMainScreen> {
  void sayHello(String name) {
    debugPrint("Hello, $name!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Callback Beispiel")),
      body: Center(
        child: MyButton(
          myFunction: sayHello,
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final void Function(String input) myFunction;

  const MyButton({required this.myFunction, super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            onChanged: (value) {},
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: () {
                  nameController.clear();
                },
                child: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              widget.myFunction(nameController.text);
            },
            child: Text("Klick mich!"),
          ),
        ],
      ),
    );
  }
}
