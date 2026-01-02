import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/text_styles/heading1.dart';
import 'package:learnify_app/config/Components/text_styles/heading3.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/constants/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Heading1(title: AppStrings.welcomeBackText)),
             Heading3(title: AppStrings.youHaveBeenMissed)
            ],
          ),
        )),
    );
  }
}