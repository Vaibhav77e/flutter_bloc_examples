import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthClassEvents, AuthState>{
  AuthBloc():super(AuthInitialState());
}