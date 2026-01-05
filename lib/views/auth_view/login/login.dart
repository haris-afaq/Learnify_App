import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_bloc.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading1.dart';
import 'package:learnify_app/config/Components/text_styles/heading3.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/constants/strings.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/views/auth_view/login/widgets/login_button.dart';
import 'package:learnify_app/views/auth_view/login/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailFocusNode =FocusNode();
  final passwordFocusNode=FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(create: (_)=> LoginBloc(),
    child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Heading1(title: AppStrings.welcomeBackText)),
            3.height,
           Heading3(title: AppStrings.youHaveBeenMissed,
           titleColor: AppColors.grayColor,
           ),
           50.height,
           Form(
            key: formKey,
            child: Column(
            children: [
             EmailInputField(emailFocusNode: emailFocusNode),
           15.height,
           PasswordInputField(passwordFocusNode: passwordFocusNode),
           5.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Heading3(title: AppStrings.forgotPassword,
              titleColor: AppColors.blueColor
              )
          ]),
          35.height,
        LoginButton(),
       15.height,
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Bodytext(text: AppStrings.newAccount),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RouteNames.createAccount);
                },
                child: Heading3(title: AppStrings.registerHere,
                titleColor: AppColors.blueColor
                ),
              )
          ]),
          
            ],
           ))
          ],
        ),
      ),
    ),
    );
  }
}