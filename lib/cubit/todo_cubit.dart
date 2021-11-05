import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todoappwithbottomnav/model/task_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState(todos: []));

  void addTodo(TodoModel todo) {
    emit(state.copyWith(todos: [...state.todos, todo]));
  }
}
