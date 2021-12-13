import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_widget.dart';
import 'package:demo_xyzies/App/provider/todos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompletedListWidget extends StatelessWidget {
  const CompletedListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todosCompleted;


    return todos.isEmpty
        ? const Center(
            child: Text(
            'No completed task',
            style: TextStyle(fontSize: 20),
          ))
        : ListView.separated(
            padding: const EdgeInsets.all(16),
            physics: const BouncingScrollPhysics(),
            itemCount: todos.length, // evita que se rompa la lista
            separatorBuilder: (context, index) => Container(height: 10),
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
          );
  }
}
