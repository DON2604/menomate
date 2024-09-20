import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:menomate/screens/fd.dart';
import 'package:menomate/screens/home.dart';
import 'package:menomate/screens/moodPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

 
  final List<Widget> _pages = [
    Home(), 
    Statistics(), 
    Center(child: Text('Settings Page')),
    MoodPage() 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: const Color.fromARGB(255, 254, 83, 140),
        animationDuration: const Duration(milliseconds: 200),
        height: 57,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.settings),
          Icon(Icons.camera_alt_rounded)
        ],
      ),
    );
  }
}
