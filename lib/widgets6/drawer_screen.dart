import 'package:app_akademie_practice/widgets6/pages/home_page.dart';
import 'package:app_akademie_practice/widgets6/pages/settings_page.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  // State
  int pageIndex = 0;

  List<Widget> pages = [HomePage(), SettingsPage()];

  // Alternative zur Liste
  // Widget getPage() {
  //   if (pageIndex == 0) {
  //     return HomePage();
  //   } else if (pageIndex == 1) {
  //     return SettingsPage();
  //   } else {
  //     return Text("Alles andere");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.orange.shade300,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(children: [Text("david@gmail.com")]),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  Divider(height: 64),
                  ListTile(
                    onTap: () {
                      print("Logout wurde geklickt!");
                    },
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: drawer2(),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Expanded(child: pages[pageIndex]),
      ),
    );
  }

  Drawer drawer2() {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Center(child: Text("david@gmail.com")),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            iconColor: pageIndex == 0 ? Colors.orange : Colors.black,
            textColor: pageIndex == 0 ? Colors.orange : Colors.black,
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            iconColor: pageIndex == 1 ? Colors.orange : Colors.black,
            textColor: pageIndex == 1 ? Colors.orange : Colors.black,
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          const Spacer(),
          ListTile(
            onTap: () {
              print("Logout wurde geklickt!");
            },
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
