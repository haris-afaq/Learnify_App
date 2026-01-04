import 'package:equatable/equatable.dart';
import 'package:learnify_app/utils/auth_states.dart';

class SignupStates extends Equatable{
  final String email;
  final String userName;
  final String password;
  final String confirmPassword;
  final String message;
  final AuthStates authStates;

 const SignupStates ({
   this.email="",
   this.userName="",
   this.password="",
   this.confirmPassword="",
   this.message="",
   this.authStates=AuthStates.initial,
 });

 SignupStates copyWith({
  String? email,
  String? userName,
  String? password,
  String? confirmPassword,
  String? message,
  AuthStates? authStates,
 }){
  return SignupStates(
    email: email?? this.email, 
    userName: userName?? this.userName, 
    password: password?? this.password, 
    confirmPassword: confirmPassword?? this.confirmPassword, 
    message: message??this.message, 
    authStates: authStates?? this.authStates);
 }


 @override
 List<Object> get props => [userName, email, password, confirmPassword, message, authStates];
}