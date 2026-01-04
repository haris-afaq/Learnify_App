import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';
import 'package:learnify_app/config/constants/colors.dart';

class EmailInputField extends StatelessWidget {
  FocusNode emailFocusNode;
   EmailInputField({super.key,
  
  required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupStates>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, State){
      return TextFormField(
              focusNode: emailFocusNode,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value){
                context.read<SignupBloc>().add(EmailChanged(email: value));
              },
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_outlined, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
               validator: (value){
                if(value!.isEmpty){
                  return "Email is required...!";
                }
                else {
                  return null;
                }
              },
             );
    });
  }
}