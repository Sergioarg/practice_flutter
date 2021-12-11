import 'package:demo_xyzies/App/Screens/todo_page.dart';
import 'package:demo_xyzies/App/Screens/car_page.dart';
import 'package:demo_xyzies/App/Screens/home_page.dart';
import 'package:demo_xyzies/App/Screens/profile_page.dart';
import 'package:flutter/material.dart';

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  int selectedIndex = 0;

  final screens =  [
    HomePage(),
    TodoList(),
    CarPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        // body: screens[selectedIndex],
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),

        bottomNavigationBar: BottomNavigationBar(
          // config to get default values
          // type: BottomNavigationBarType.fixed, // remove the animations
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white70,
          selectedFontSize: 20,
          // unselectedFontSize: 20,
          iconSize: 30,
          // showUnselectedLabels: false,

          currentIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.orange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental),
              label: 'Car',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black,
            ),
          ],
        ),
      );
}
