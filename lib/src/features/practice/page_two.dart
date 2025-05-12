import 'package:app_akademie_practice/src/common/consts.dart';
import 'package:flutter/material.dart';

// TODO: Wie kann ich die Hintergrundfarbe der AppBar anpassen?

// TODO: Wie kann ich zur letzten Seite zurückkehren?

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
        ],
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text("Geheimer Text:"), Text(realSecretText)],
        ),
      ),
    );
  }
}
