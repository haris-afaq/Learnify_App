import 'package:bloc/bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_events.dart';
import 'package:learnify_app/bloc/login_bloc/login_states.dart';
import 'package:learnify_app/repositories/auth_repositories/login_repository.dart';
import 'package:learnify_app/utils/auth_states.dart';

class LoginBloc extends Bloc<LoginEvents, Loginstates>{

  LoginRepository loginRepository = LoginRepository();
LoginBloc(): super(Loginstates()){
   on<EmailChanged> (_onEmailChanged);
   on<PasswordChanged> (_onPasswordChanged);
   on<LoginButtonClicked> (_onLoginButtonClicked);
}

void _onEmailChanged(EmailChanged event, Emitter<Loginstates> emit){
  emit(state.copyWith(
    email: event.email
  ));
}

void _onPasswordChanged(PasswordChanged event, Emitter<Loginstates>emit){
  emit(state.copyWith(
    password: event.password
  ));
}

Future<void> _onLoginButtonClicked(
  LoginButtonClicked event,
  Emitter<Loginstates> emit,
) async {
  emit(state.copyWith(authStates: AuthStates.loading));

  try {
    final user = await loginRepository.login(
      email: state.email,
      password: state.password,
    );

    if (user != null) {
      emit(state.copyWith(
        authStates: AuthStates.success,
        message: "Login Successful",
      ));
    } else {
      emit(state.copyWith(
        authStates: AuthStates.error,
        message: "Invalid credentials",
      ));
    }
  } catch (e) {
    emit(state.copyWith(
      authStates: AuthStates.error,
      message: e.toString(),
    ));
  }
}


// Future<void> _onLoginButtonClicked(LoginButtonClicked event, Emitter<Loginstates> emit) async{
// emit(state.copyWith(
//   authStates: AuthStates.loading,
// ));

// try{
//   await loginRepository.Login(
//     email: state.email, 
//     password: state.password, 
//     );
//     emit(state.copyWith(
//       authStates: AuthStates.success,
//       message: "Login Successful",
//     ));
//     print("Login Successful for : ${state.email}, ${state
//     .password}");
// }
// catch(e){
//   emit(state.copyWith(
//     authStates: AuthStates.error,
//     message: "Login Failed...!"
//   ));
//   print("Login Failed: $e");
// }
// }

}