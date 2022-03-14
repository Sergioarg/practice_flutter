import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_xyzies/App/Pages/todo_page.dart';
import 'package:flutter/material.dart';

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {

  int selectedIndex = 0;

  final pages = const [
    TodoApp(),
  ];

  final items = const <Widget>[
    Icon(Icons.checklist_rtl_outlined, size: 30),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      extendBody: true,
      backgroundColor: Colors.redAccent,
      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        height: 60,
        items: items,
        onTap: (index) => setState(
          () => selectedIndex = index,
        ),
      ),
    );
}
