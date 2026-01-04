import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';
import 'package:learnify_app/config/constants/colors.dart';

class ConfirmPasswordInoutField extends StatelessWidget {
  FocusNode confirmPasswordFocusNode;
   ConfirmPasswordInoutField({super.key,
   required this.confirmPasswordFocusNode
   });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc , SignupStates>(
  buildWhen: (previous, current) =>
          previous.confirmPassword != current.confirmPassword,
      builder: (context, state){
      
      return     TextFormField(
              focusNode: confirmPasswordFocusNode,
              obscureText: true,
              obscuringCharacter: "*",
              // keyboardType: TextInputType.name,
              onChanged: (value){
                context.read<SignupBloc>().add(ConfirmPasswordChanged(confirmPassword: value));
              },
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Confirm Password"),
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Confirm password is required...!";
                }
                else {
                  return null;
                }
              },
             );
    });
  }
}