import 'package:app_akademie_practice/widgets6/pages/home_page.dart';
import 'package:app_akademie_practice/widgets6/pages/settings_page.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  // State
  int _pageIndex = 0;

  List<Widget> pages = [
    HomePage(), //index 0
    SettingsPage(), //index 1
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("2ter Screen")),
      drawer: Drawer(
        child: Expanded(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Drawer")),
              ListTile(
                title: Text("Home Page"),
                onTap: () {
                  setState(() {
                    _pageIndex = 0;
                  });
                },
              ),
              ListTile(
                title: Text("Settings Page"),
                onTap: () {
                  setState(() {
                    _pageIndex = 1;
                  });
                },
              ),
              ListTile(
                title: Text("Profile Page"),
                onTap: () {
                  setState(() {
                    _pageIndex = 2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        selectedIndex: _pageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Einstellungen",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(child: pages[_pageIndex]),
      ),
    );
  }
}
