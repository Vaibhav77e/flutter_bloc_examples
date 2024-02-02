part of 'auth_bloc.dart';

sealed class AuthState{}

class AuthInitialState extends AuthState{}

class AuthSuccessState extends AuthState{
  String uid;
  AuthSuccessState({required this.uid});
}

class AuthFailureState extends AuthState{
  String error;
  AuthFailureState(this.error);
}

class AuthLoadingState extends AuthState{}