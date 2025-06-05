import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Dark Mode"),
            trailing: Switch(
              value: true,
              onChanged: (newValue) {},
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Change Theme"),
          ),
        ],
      ),
    );
  }
}
