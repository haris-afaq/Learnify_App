import 'package:equatable/equatable.dart';

class Loginstates extends Equatable{
  final String email;
  final String password;
  final String message;

  const Loginstates({
    this.email = "",
    this.password= "",
    this.message = "",
  });

  Loginstates copyWith({
    String?email, String?password, String?message
  }){
    return Loginstates(
      email: email?? this.email,
      password: password?? this.password,
      message:  message?? this.password
    );
  }


  @override
  List<Object> get props => [email, password, message];
}