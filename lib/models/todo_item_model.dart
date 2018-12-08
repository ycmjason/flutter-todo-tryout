class ToDoItemModel {
  ToDoItemModel({this.description = '', this.done = false});

  final String description;
  bool done;

  void toggle() {
    done = !done;
  }
}
