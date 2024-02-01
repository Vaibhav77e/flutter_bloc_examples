import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

//bloc relies on events
// cubits relies on functions

// then add event and state as generic types or whatever
class CounterBloc extends Bloc<CounterEvent,int>{
  // now capture or listen to events changes by adding event handler
  CounterBloc():super(0){
    on<CounterIncremented>((event, emit) {
      print('Before: $state');
      emit(state+1);
      print('After: $state');
    });

    on<CounterDecremented>((event, emit) {
      emit(state-1);
    });
  }
}