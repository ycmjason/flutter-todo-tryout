import 'package:flutter/material.dart';

import '../models/todo_item_model.dart';
import './todolist.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ToDoItemModel> _todos = [
    ToDoItemModel(description: 'wash my dishes'),
    ToDoItemModel(description: 'do my laundry'),
    ToDoItemModel(description: 'do my coursework'),
  ];

  void _toggleTodo(ToDoItemModel todo) {
    setState(() {
      todo.toggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ToDoList(
        onCheck: (ToDoItemModel todoItem) => _toggleTodo(todoItem),
        todos: _todos
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
