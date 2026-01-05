import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';
import 'package:learnify_app/config/Components/main_button.dart';
import 'package:learnify_app/config/Components/snack_bar.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/utils/auth_states.dart';

class SignupButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  SignupButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupStates>(
      listener: (context, state) {
        if (state.authStates == AuthStates.loading) {
          CustomSnackbar.show(     
            context,
            text: ("Loading...!"));
        } 
        else if (state.authStates == AuthStates.success) {
          CustomSnackbar.show(
            context,
            text: ("Account created sucessfully...!"));

Navigator.pushNamed(context, RouteNames.loginScreen);
        } 
        else if (state.authStates == AuthStates.error) {
          CustomSnackbar.show(
            backgroundColor: Colors.red,
            context,
            text: ("Something went wrong while creating account...!")
          );
        }
      },
      child: BlocBuilder<SignupBloc, SignupStates>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return MainButton(
            title: "Signup",
            onTap: () {
              if (formKey.currentState!.validate()) {
                context.read<SignupBloc>().add(SignUpButtonClicked());
              }
            },
          );
        },
      ),
    );
  }
}


// class SignupButton extends StatelessWidget {
//   final formKey;

//    SignupButton({super.key,
//    required this.formKey
//    });

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<SignupBloc, SignupStates>(listener: (context, state){
//       if(state.authStates == AuthStates.success){
//         CustomSnackbar("Account created Successfuly...!");
//       }
//       else if(state.authStates == AuthStates.loading){
//         LoadingWidget();
//       }
//       else if(state.authStates==AuthStates.error){
//         CustomSnackbar("Something went wrong while creating account...!");
//       }
//     },
//     child: BlocBuilder(builder: (context, satate){
//             buildWhen: (previous, current) => false;
//       return  MainButton(title: "Signup", onTap: (){
//               if(formKey.currentState!.validate()){
//                 context.read<SignupBloc>().add(SignUpButtonClicked());
//               };
//              });
//     }),);
//   }
// }


