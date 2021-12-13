import 'package:flutter/cupertino.dart';
import 'package:demo_xyzies/App/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  // _todo <- privated

  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Buy Food',
      description: '''- Eggs
- Water''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan family trip to Norway',
      description: '''- Rent some hotels
- Rent a car
- Pack suitcase''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Walk the Dog 🐕',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Make Demo',
    ),
  ];
  // make todo pubic
  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();

  // metodos para el crud de los todos

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }
}
