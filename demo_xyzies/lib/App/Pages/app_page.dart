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
  int selectedIndex = 0;

  final pages = [
    HomePage(),
    TodoList(),
    CarPage(),
    ProfilePage(),
  ];

  final items = <Widget>[
    Icon(Icons.home, size: 30),
    Icon(Icons.search, size: 30),
    Icon(Icons.favorite, size: 30),
    Icon(Icons.person, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Home page"),
        elevation: 0,
        centerTitle: true,
      ),

      bottomNavigationBar: CurvedNavigationBar(
        // items = items,
        items: items,

      ),
    );
  }
}
