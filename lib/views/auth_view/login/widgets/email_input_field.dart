import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

// ignore: must_be_immutable
class EmailInputField extends StatelessWidget {
  FocusNode emailFocusNode;
   EmailInputField({super.key,
  required this.emailFocusNode
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
              focusNode: emailFocusNode,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value){},
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_outlined, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
             );
  }
}