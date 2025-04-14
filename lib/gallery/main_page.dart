import 'package:app_akademie_practice/gallery/pages/about_me_page.dart';
import 'package:app_akademie_practice/gallery/pages/image_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  int _pageIndex = 0;

  List<Widget> pages = [ImagePage(), AboutMePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyGallery")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(child: pages[_pageIndex]),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        onDestinationSelected: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.image),
            label: 'Bilder',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Über mich',
          ),
        ],
      ),
    );
  }
}
