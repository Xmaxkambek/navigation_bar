import 'package:flutter/material.dart';
import 'package:navigation_bar/screens/create.dart';
import 'package:navigation_bar/screens/home_page.dart';
import 'package:navigation_bar/screens/office_page.dart';
import 'package:navigation_bar/screens/drawer_page.dart';
import 'bosh_menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NavigationBar(),
    initialRoute: 'home',
    routes: {
      'home': (context) => meal(),
      'main': (context) => NavigationBar(),
      'number':(context) => number(),
    },
  ));
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;
  List<Widget> index = [
    HomePage(),
    OfficePage(),
    drawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(child: index[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        // mouseCursor: MouseCursor.defer,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'OFFICE'),
          BottomNavigationBarItem(icon: Icon(Icons.dehaze), label: 'DRAWER'),
        ],
        currentIndex: _currentIndex,
      ),
    );
  }
}
