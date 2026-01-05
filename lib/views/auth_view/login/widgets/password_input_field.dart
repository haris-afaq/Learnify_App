import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_events.dart';
import 'package:learnify_app/bloc/login_bloc/login_states.dart';
import 'package:learnify_app/config/constants/colors.dart';

class PasswordInputField extends StatelessWidget {
  FocusNode passwordFocusNode;
   PasswordInputField({super.key,
   required this.passwordFocusNode
   });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, Loginstates>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state){
      return TextFormField(
              focusNode: passwordFocusNode,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value){
                context.read<LoginBloc>().add(PasswordChanged(password: value));
              },
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
             );
    });
  }
}