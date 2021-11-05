import 'package:flutter/material.dart';
import 'package:todoappwithbottomnav/cubit/todo_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoListState = context.watch<TodoCubit>().state;
    final todoList = todoListState.todos;

    if (todoList.isEmpty) {
      return const Center(
        child: Text('No Todos'),
      );
    }

    return ListView.separated(
      itemBuilder: (context, index) {
        final todo = todoList[index];
        return ListTile(
          title: Text(todo.name),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: todoList.length,
    );
  }
}
