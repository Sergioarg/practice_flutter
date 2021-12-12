import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_xyzies/App/Pages/product_page.dart';
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
  int selectedIndex = 2;

  final pages = [
    // LoginPage(),
    HomePage(),
    TodoList(),
    ProductPage(),
    ProfilePage(),
  ];

  final items = const <Widget>[
    Icon(Icons.home, size: 30),
    Icon(Icons.checklist_rtl_outlined, size: 30),
    Icon(Icons.directions_car_filled, size: 30),
    Icon(Icons.person, size: 30),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      extendBody: true,
      backgroundColor: Colors.redAccent,

      body: IndexedStack(
          index: selectedIndex,
          children: pages,
        ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        buttonBackgroundColor: Colors.white,
        // backgroundColor: Colors.transparent,
        backgroundColor: Colors.white,
        height: 60,
        items: items,
        onTap: (index) => setState(
          () => selectedIndex = index,
        ),
      ),
    );
}
