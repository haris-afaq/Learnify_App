import 'package:equatable/equatable.dart';
import 'package:learnify_app/utils/auth_states.dart';

class Loginstates extends Equatable{
  final String email;
  final String password;
  final String message;
  final AuthStates authStates;

  const Loginstates({
    this.email = "",
    this.password= "",
    this.message = "",
    this.authStates = AuthStates.initial,
  });

  Loginstates copyWith({
    String?email, 
    String?password, 
    String?message,
    AuthStates? authStates,
  }){
    return Loginstates(
      email: email?? this.email,
      password: password?? this.password,
      message:  message?? this.password,
      authStates: authStates?? this.authStates
    );
  }


  @override
  List<Object> get props => [email, password, message, authStates];
}