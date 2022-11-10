import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavigationBar(),
  ));
}

class NavigationBar extends StatefulWidget {
  NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;
  List screens = ['Home', 'Office', 'School'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(screens[_currentIndex])),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Office'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'SCHOOL'),
        ],
        currentIndex: _currentIndex,
      ),
    );
  }
}
