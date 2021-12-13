import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_widget.dart';
import 'package:demo_xyzies/App/provider/todos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:demo_xyzies/App/model/todo.dart';
// import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    // get all the todos
    final todos = provider.todos;

    return todos.isEmpty
        ? Center(
            child: Text(
            'No todos',
            style: TextStyle(fontSize: 20),
          ))
        : ListView.separated(
            padding: EdgeInsets.all(16),
            physics: BouncingScrollPhysics(),
            itemCount: todos.length, // evita que se rompa la lista
            separatorBuilder: (context, index) => Container(height: 10),
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
          );
  }
}
