import 'package:flutter/cupertino.dart';
import 'package:demo_xyzies/App/model/todo.dart';

// Controler of the functions
class TodosProvider extends ChangeNotifier {
  // _todo <- privated

  final List<Todo> _todos = [
      Todo(
      createdTime: DateTime.now(),
      title: 'Make Demo',
      description: '- Todo and docs',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Buy Food',
      description: '- Eggs Water',),
    Todo(
      createdTime: DateTime.now(),
      title: 'Walk the Dog',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan family trip to Medellin',
      description: '- Buy tickets',
    ),
  ];


  // Todos incompleted
  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  // Todos completed
  List<Todo> get todosCompleted => _todos.where((todo) => todo.isDone).toList();

  // Methods for the crude of the todos
  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  // method to move completed todos
  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();
    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;
    notifyListeners();
  }
}
