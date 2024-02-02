import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState>{
  AuthBloc():super(AuthInitialState()){
    on<LoginRequestedEvent>((event, emit)async{
      emit(AuthLoadingState());
      try{
        final email = event.email;
        final password = event.password;
        final emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

      if(!emailValid.hasMatch(email)){
        emit(AuthFailureState('Please enter a valid email address'));
           return;
      }

      if(password.length<6){
           emit(AuthFailureState('Password must be 6 character long'));
           return;
      }

      await Future.delayed(const Duration(seconds: 1)).then((_) => emit(AuthSuccessState(uid: "$email-$password")));
      }catch(e){
          emit(AuthFailureState(e.toString()));
      }

    });

    on<OnLogoutRequestedEvent>((event, emit){
      emit(AuthLoadingState());
      try{
        emit(AuthInitialState());
      }catch(e){
        emit(AuthFailureState(e.toString()));
      }
    });
  }


}