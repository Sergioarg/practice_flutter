import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final String _title = 'Todo Page - Demo XYZies';

  @override
  Widget build(BuildContext context) {
    return Title(
      title: _title,
      color: Colors.blue, // This is required
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo'),
          centerTitle: true,
        ),
        body: const Center(child: Text('Todo :)', style: TextStyle(fontSize: 60))),
      ),
    );
  }
}
