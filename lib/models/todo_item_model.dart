class ToDoItemModel {
  ToDoItemModel({this.description = '', this.done = false});

  String description;
  bool done;

  void toggle() {
    done = !done;
  }
}
