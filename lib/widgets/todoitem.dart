import 'package:flutter/material.dart';
import '../models/todo_item_model.dart';

class ToDoItem extends StatefulWidget {
  final void Function() onToggle;
  final void Function(String) onChange;
  final ToDoItemModel todo;

  const ToDoItem({
    Key key,
    @required this.todo,
    this.onToggle,
    this.onChange,
  }) : super(key: key);

  @override
  _ToDoItemState createState() {
    return new _ToDoItemState();
  }
}

class _ToDoItemState extends State<ToDoItem> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.todo.description);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (_) => widget.onToggle?.call(),
        value: widget.todo.done,
      ),
      title: TextField(
        controller: _controller,
        onChanged: (s) => widget.onChange?.call(s),
      ),
    );
  }
}
