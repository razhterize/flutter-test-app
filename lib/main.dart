import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("Flutter App"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
