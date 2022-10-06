import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  int currentDIsplayIndex = 0;
  void increment() {
    setState(() {
      counter++;
      while (true){
        sleep(const Duration(milliseconds: 100))
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sup World!",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Column(
          children: [Text("Current Nav Bar index is $currentDIsplayIndex")],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black26,
          currentIndex: currentDIsplayIndex,
          showUnselectedLabels: false,
          onTap: (index) => setState(() {
            currentDIsplayIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "Contact",
              icon: Icon(Icons.people),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
