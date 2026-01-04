import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';
import 'package:learnify_app/config/constants/colors.dart';

class UserNameInutField extends StatelessWidget {
  FocusNode userNameFocusNode;
   UserNameInutField({super.key,
  required this.userNameFocusNode
  });

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SignupBloc, SignupStates>(
      buildWhen: (previous, current) => previous.userName != current.userName,
      builder: (context,state){
      return TextFormField(
              focusNode: userNameFocusNode,
              keyboardType: TextInputType.name,
              onChanged: (value){
                context.read<SignupBloc>().add(UserNameChanged(userName: value));
              },
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("User Name"),
                prefixIcon: Icon(Icons.person_outline, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
               validator: (value){
                if(value!.isEmpty){
                  return "User Name is required...!";
                }
                else {
                  return null;
                }
              },
             );
    });
  }
}