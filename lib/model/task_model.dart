class TodoModel {
  String name;
  int id;
  String dis;
  bool isDone;

  TodoModel(
      {required this.id,
      required this.name,
      required this.dis,
      this.isDone = false});

  TodoModel copyWith({String? name, String? dis, int? id, bool? isDone}) {
    return TodoModel(
        id: id ?? this.id,
        name: name ?? this.name,
        dis: dis ?? this.dis,
        isDone: isDone ?? this.isDone);
  }
}
