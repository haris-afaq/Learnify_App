import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_bloc.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading1.dart';
import 'package:learnify_app/config/Components/text_styles/heading3.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/constants/strings.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/views/auth_view/signUp/widgets/signup_button.dart';
import 'package:learnify_app/views/auth_view/signUp/widgets/widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final userNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
    final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  
  @override
void dispose() {
  userNameFocusNode.dispose();
  emailFocusNode.dispose();
  passwordFocusNode.dispose();
  confirmPasswordFocusNode.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return  BlocProvider<SignupBloc>(
        create: (_)=> SignupBloc(),
        child: Scaffold(
          backgroundColor: AppColors.appBackgroundColor,
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(child: Heading1(title: AppStrings.newHere)),
              3.height,
             Heading3(title: AppStrings.youWillLoveIt,
             titleColor: AppColors.grayColor,
             ),
             50.height,
            Form(
              key: formKey,
              child: Column(children: [
               UserNameInutField(userNameFocusNode: userNameFocusNode),
             10.height,
             EmailInputField(emailFocusNode: emailFocusNode),
             10.height,
             PasswordInputField(passwordFocusNode: passwordFocusNode,),
             10.height,
             ConfirmPasswordInoutField(confirmPasswordFocusNode: confirmPasswordFocusNode),
             35.height,
            SignupButton(formKey: formKey),
             15.height,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Bodytext(text: AppStrings.alreadyHaveAnAccount),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RouteNames.loginScreen);
                  },
                  child: Heading3(title: AppStrings.loginText,
                  titleColor: AppColors.blueColor
                  ),
                )
            ]),
                         ],))
          ],
        ),
      ),
        )
        
    );
  }
}