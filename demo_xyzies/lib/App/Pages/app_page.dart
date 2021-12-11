import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_xyzies/App/Pages/todo_page.dart';
import 'package:demo_xyzies/App/Pages/car_page.dart';
import 'package:demo_xyzies/App/Pages/home_page.dart';
import 'package:demo_xyzies/App/Pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  // TODO: change to 0
  int selectedIndex = 3;

  final pages = [
    HomePage(),
    TodoList(),
    CarPage(),
    ProfilePage(),
  ];

  final items = const <Widget>[
    Icon(Icons.home, size: 30),
    Icon(Icons.search, size: 30),
    Icon(Icons.favorite, size: 30),
    Icon(Icons.person, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // top: false,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.redAccent,

        body: pages[selectedIndex],

        bottomNavigationBar: CurvedNavigationBar(
          // Color of the navbar
          color: Colors.blue,
          // animationDuration: Duration(microseconds: 300),
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          height: 60,
          items: items,
          onTap: (index) => setState(
            () => selectedIndex = index,
          ),
        ),
      ),
    );
  }
}
