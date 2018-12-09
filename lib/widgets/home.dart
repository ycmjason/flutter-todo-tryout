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

  void _changeTodoDesc(ToDoItemModel todo, String s) {
    setState(() {
      todo.description = s;
    });
  }

  void _newTodo() {
    setState(() {
      _todos.add(ToDoItemModel());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ToDoList(
                onToggle: _toggleTodo,
                onChange: _changeTodoDesc,
                todos: _todos,
            ),
          ),
          /*
          Text(_todos.map((ToDoItemModel todo) {
            return '[${todo.done ? 'DONE' : 'NOT DONE'}] ${todo.description}';
          }).join('\n')),
          */
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newTodo,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
