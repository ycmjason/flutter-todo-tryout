import 'package:flutter/material.dart';
import '../models/todo_item_model.dart';
import './todoitem.dart';

class ToDoList extends StatelessWidget {
  final void Function(ToDoItemModel) onToggle;
  final void Function(ToDoItemModel, String) onChange;
  final List<ToDoItemModel> todos;

  const ToDoList({
    Key key,
    @required this.todos,
    this.onToggle,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: todos.map((todo) => ToDoItem(
        todo: todo,
        onToggle: () => onToggle(todo),
        onChange: (s) => onChange(todo, s),
      )).toList(),
    );
  }
}
