part of 'todo_cubit.dart';

class TodoState extends Equatable {
  final List<TodoModel> todos;

  const TodoState({required this.todos});

  @override
  List<Object?> get props => [todos];

  TodoState copyWith({List<TodoModel>? todos}) {
    return TodoState(todos: todos ?? this.todos);
  }
}
