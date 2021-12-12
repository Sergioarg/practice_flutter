import 'package:demo_xyzies/App/Widgets/widgets_todo_page.dart';
import 'package:demo_xyzies/main.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    final tabs = [Container(), Container()];
    return Scaffold(
      appBar: AppBar(title: Text('Todo App'),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: ,
        items: [],),
    );
  }
}
