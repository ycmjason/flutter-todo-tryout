import 'package:flutter/material.dart';
import '../models/todo_item_model.dart';

class ToDoList extends StatelessWidget {
  final void Function(ToDoItemModel) onCheck;
  final List<ToDoItemModel> todos;

  const ToDoList({Key key, this.todos = const [], this.onCheck}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: todos.map((todo) => ListTile(
        leading: GestureDetector(
          onTap: () => onCheck(todo),
          child: todo.done ? Icon(Icons.done) : Icon(Icons.crop_square),
        ),
        title: Text(todo.description),
      )).toList(),
    );
  }
}
