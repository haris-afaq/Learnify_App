import 'package:equatable/equatable.dart';

abstract class SignupEvents extends Equatable{
  const SignupEvents();
  @override
  List<Object> get props => [];
}

class UserNameChanged extends SignupEvents{
  final String userName;
  const UserNameChanged({
    required this.userName,
  });
   @override
  List<Object> get props => [userName];
}

class EmailChanged extends SignupEvents{
  final String email;
  const EmailChanged ({
    required this.email
  });
  @override
  List<Object> get props => [email];
}

class PasswordChanged extends SignupEvents{
  final String password;
  const PasswordChanged({
    required this.password
  });
  @override
  List<Object> get props => [password];
}

class ConfirmPasswordChanged extends SignupEvents{
  final String confirmPassword;
  const ConfirmPasswordChanged({
    required this.confirmPassword
  });
   @override
  List<Object> get props => [confirmPassword];

}

class SignUpButtonClicked extends SignupEvents{}