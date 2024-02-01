import 'package:bloc_app/Todo/Todo_cubit/todo_cubit.dart';
import 'package:bloc_app/Todo/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
       body: BlocBuilder<TodoCubit,List<TodoModel>>(
         builder:(context,todos)=> ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,i){
          return ListTile(
            title: Text(todos[i].name),
          );
         }),
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}