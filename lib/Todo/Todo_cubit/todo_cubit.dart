import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/todo_model.dart';

class TodoCubit extends Cubit<List<TodoModel>> {
  TodoCubit():super([]);


  void createTodo(String title){
    if(title.isEmpty){
      addError('Name can\'t be empty');
      return;
    }
    final todo = TodoModel(name:title,created: DateTime.now() );

    state.add(todo);
    print(state);
    emit([...state]);
  }

  @override
  void onChange(Change<List<TodoModel>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print('ToDoCubit : $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print('Todo Error : $error');
  }
}