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

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final tabs = [
      const TodoListWidget(),
      const CompletedListWidget(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminders', style: TextStyle(fontSize: 20, color: Colors.blue)),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black.withOpacity(0.7),
        selectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: 'Todos'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
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
