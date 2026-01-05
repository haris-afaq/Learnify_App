import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_events.dart';
import 'package:learnify_app/bloc/login_bloc/login_states.dart';
import 'package:learnify_app/config/Components/main_button.dart';
import 'package:learnify_app/config/Components/snack_bar.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/utils/auth_states.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, Loginstates>(
      listenWhen: (previous, current) => previous.authStates != current.authStates,
      listener: (context, state){
      if(state.authStates == AuthStates.loading){
        CustomSnackbar.show(
          backgroundColor: AppColors.primaryColor,
          context,
          text: "Please wait... Logging in your account...!"
        );
      }
      else if(state.authStates == AuthStates.success){
        CustomSnackbar.show(
          context, 
          text: state.message.toString()
        );
        Navigator.pushNamed(context, RouteNames.homeScreen);
      }
      else if(state.authStates == AuthStates.error){
        CustomSnackbar.show(
          backgroundColor: Colors.red,
          context, 
          text: state.message.toString());
       
      }
    },
    child: BlocBuilder<LoginBloc, Loginstates>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return MainButton(
            title: "Login",
            onTap: () {
              context.read<LoginBloc>().add(LoginButtonClicked());
              print(state.email.toString());
              print(state.password.toString());
            },
          );
        },
      ),
    )
    ;
  }
}