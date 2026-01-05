import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_events.dart';
import 'package:learnify_app/bloc/login_bloc/login_states.dart';
import 'package:learnify_app/config/constants/colors.dart';

// ignore: must_be_immutable
class EmailInputField extends StatelessWidget {
  FocusNode emailFocusNode;
   EmailInputField({super.key,
  required this.emailFocusNode
  });

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LoginBloc, Loginstates>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state){
      return TextFormField(
              focusNode: emailFocusNode,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value){
                context.read<LoginBloc>().add(EmailChanged(email: value));
              },
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_outlined, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
             );
    });
  }
}