import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/main_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MainButton(title: "Login", onTap: (){});
  }
}