part of 'auth_bloc.dart';

sealed class AuthEvents{}

class LoginRequestedEvent extends AuthEvents{
  final String email;
  final String password;

  LoginRequestedEvent(this.email, this.password,);

}

class OnLogoutRequestedEvent extends AuthEvents{}