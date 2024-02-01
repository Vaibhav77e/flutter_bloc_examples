import 'package:bloc_app/bloc/counterbloc.dart';
import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final counterCubitValue = BlocProvider.of<CounterCubit>(context);
   final counterBlocValue = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: (){
                    counterBlocValue.add(CounterIncremented());
                 // counterCubitValue.increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: (){
                counterBlocValue.add(CounterDecremented());
                  //counterCubitValue.decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.minimize),
              ),
            ],

          ),
    );
  }
}