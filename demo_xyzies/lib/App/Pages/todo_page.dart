import 'package:demo_xyzies/App/Widgets/widgets_todo/add_todo_dialog.dart';
import 'package:demo_xyzies/App/Widgets/widgets_todo/todo_list_widget.dart';
// import 'package:demo_xyzies/main.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      Container(),
    ];

    int selectedIndex = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.red.withOpacity(0.7),
        selectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: 'Todos'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),

        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton:
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.black,
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AddTodoDialogWidget(),
              barrierDismissible: true,
            ),
            child: Icon(Icons.add),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
