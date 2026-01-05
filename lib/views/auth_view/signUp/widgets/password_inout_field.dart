import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';
import 'package:learnify_app/config/constants/colors.dart';

class PasswordInputField extends StatelessWidget {
  FocusNode passwordFocusNode;
   PasswordInputField({super.key,
   required this.passwordFocusNode, 
   });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupStates>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, State){
      return TextFormField(
              focusNode: passwordFocusNode,
              obscureText: true,
              obscuringCharacter: "*",
              // keyboardType: TextInputType.name,
              onChanged: (value){
                context.read<SignupBloc>().add(PasswordChanged(password: value));
              },
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
               validator: (value){
                if(value!.isEmpty){
                  return "Password is required...!";
                }
                else {
                  return null;
                }
              },
             );
    });
  }
}