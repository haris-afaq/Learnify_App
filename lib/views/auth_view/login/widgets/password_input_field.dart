import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class PasswordInputField extends StatelessWidget {
  FocusNode passwordFocusNode;
   PasswordInputField({super.key,
   required this.passwordFocusNode
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              focusNode: passwordFocusNode,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value){},
              onFieldSubmitted: (value){},
              decoration: InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.grayColor,),
                border: OutlineInputBorder()
              ),
             );
  }
}