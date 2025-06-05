import 'package:flutter/material.dart';

class MyThemeScreen extends StatefulWidget {
  //final bool isDarkMode;
  //final void Function() onTap;
  const MyThemeScreen({
    //required this.onTap,
    //required this.isDarkMode,
    super.key,
  });

  @override
  State<MyThemeScreen> createState() => _MyThemeScreenState();
}

class _MyThemeScreenState extends State<MyThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Dark Mode"),
            trailing: Switch(
              value: true, //widget.isDarkMode,
              onChanged: (newValue) {},
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //widget.onTap();
            },
            child: Text(
              "Change Theme",
            ),
          ),
        ],
      ),
    );
  }
}
