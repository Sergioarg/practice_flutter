import 'package:demo_xyzies/App/Widgets/widgets_todo/add_todo_dialog.dart';
import 'package:demo_xyzies/App/Widgets/widgets_todo/completed_list_todo.dart';
import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_list_widget.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {

    // TODO: FIX CHANGE TO PAGE COMPLETED
    final tabs = [
      const TodoListWidget(),
      const CompletedListWidget(),
    ];

    int selectIndex = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App', style: TextStyle(fontSize: 20)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black.withOpacity(0.7),
        selectedItemColor: Colors.black,
        currentIndex: selectIndex,
        onTap: (index) => setState(() {
          selectIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: 'Todos'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
        ],
      ),
      body: tabs[selectIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        onPressed: () => showDialog(
          context: context,
          builder: (context) => const AddTodoDialogWidget(),
          barrierDismissible: true,
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
