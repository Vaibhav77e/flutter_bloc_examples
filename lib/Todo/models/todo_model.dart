class TodoModel{
  String name;
  DateTime created;

  TodoModel({ required this.name, required this.created});

  @override
  String toString() {
    return 'TodoModel(name: $name, created: $created)';
  }
}