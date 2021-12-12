import 'package:demo_xyzies/App/Pages/app_page.dart';
import 'package:demo_xyzies/App/Pages/home_page.dart';
import 'package:demo_xyzies/App/Pages/todo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final _title = 'Todo App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyAppPage(),
    );
  }
}
