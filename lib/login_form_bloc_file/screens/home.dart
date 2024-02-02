import 'package:bloc_app/login_form_bloc_file/login_bloc/auth_bloc.dart';
import 'package:bloc_app/login_form_bloc_file/screens/login_screen.dart';
import 'package:bloc_app/login_form_bloc_file/widgets/gradient_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc,AuthState>(
      listener: (context ,authState){
         if(authState is AuthFailureState){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(authState.error)));
          }
          if(authState is AuthInitialState){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
          }
      },
    builder: (context,authState){
      if(authState is AuthLoadingState){
      return Center(child: CircularProgressIndicator(),);
      }
      return Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text((authState as AuthSuccessState).uid),
              GradientButton(
                text: 'Logout',
                onPressed: (){
                  context.read<AuthBloc>().add(OnLogoutRequestedEvent());
                })
            ],
          ),
        ),
      );
    },
    
    );
  }
}