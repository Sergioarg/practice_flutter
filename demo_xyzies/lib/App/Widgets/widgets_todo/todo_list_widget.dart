import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_widget.dart';
import 'package:flutter/material.dart';
import 'package:demo_xyzies/App/model/todo.dart';
import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_widget.dart';

class TodoListWidget extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    return TodoWidget(
      todo: Todo(
        createdTime: DateTime.now(),
        title: 'Walk th dog'
      ),
    );
  }
}
