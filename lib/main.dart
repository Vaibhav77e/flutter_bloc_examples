// import 'package:bloc_app/bloc/counterbloc.dart';
// import 'package:bloc_app/cubit/counter_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'myhomepage.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<CounterCubit>(create: (_)=>CounterCubit(),),
//         BlocProvider<CounterBloc>(create: (_)=>CounterBloc(),)
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }

// <----------------TODO List-------------------------->

// import 'package:bloc_app/Todo/Todo_cubit/todo_cubit.dart';
// import 'package:bloc_app/Todo/add_todo_page.dart';
// import 'package:bloc_app/Todo/todo_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_)=>TodoCubit(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         initialRoute: '/',
//         routes: {
//           '/': (_) => const TodoList(),
//           '/add-todo': (_) => const AddTodoPage(),
//         },
//       ),
//     );
//   }
// }



//// <--------------------- Login form field bloc example ----------------->

import 'package:bloc_app/login_form_bloc_file/pallete.dart';
import 'package:flutter/material.dart';

import 'login_form_bloc_file/screens/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}


