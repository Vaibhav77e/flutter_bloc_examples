import "package:bloc_app/bloc/counterbloc.dart";
import "package:bloc_app/cubit/counter_cubit.dart";
import "package:bloc_app/cubit/inc_dec.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
  // final counterCubit = BlocProvider.of<CounterCubit>(context);
  final counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<CounterBloc,int>(
      builder: (context,counter) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${counterBloc.state}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IncDecPage()));
          },
          child:const Icon(Icons.navigate_next_rounded)
          )
        );
      }
    );
  }
}