import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoappwithbottomnav/cubit/todo_cubit.dart';
import 'package:todoappwithbottomnav/model/task_model.dart';
import 'package:todoappwithbottomnav/router/app_router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeTabRouter(),
        OtherTabRouter(),
      ],
      bottomNavigationBuilder: (_, tabrouter) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabrouter.activeIndex,
            onTap: tabrouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Other',
                icon: Icon(Icons.task),
              ),
            ]);
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<TodoCubit>()
              .addTodo(TodoModel(id: 2, name: "name", dis: "dis"));
        },
        child: const Text("add"),
      ),
    );
  }
}
