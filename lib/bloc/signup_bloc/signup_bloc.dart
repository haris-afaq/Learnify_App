import 'package:bloc/bloc.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';

class SignupBloc extends Bloc<SignupEvents, SignupStates>{
  SignupBloc():super (SignupStates()){
    on<UserNameChanged> (_onUserNameChanged);
    on<EmailChanged> (_onEmailChanged);
    on<PasswordChanged> (_onPasswordChanged);
    on<ConfirmPasswordChanged> (_onConfirmPasswordChanged);
  }

  void _onUserNameChanged(UserNameChanged event, Emitter<SignupStates>emit){
    emit(
      state.copyWith(
        userName: event.userName,
      )
    );
  }

 void _onEmailChanged(EmailChanged event, Emitter<SignupStates>emit){
  emit(state.copyWith(
    email: event.email,
  ));
 }

 void _onPasswordChanged(PasswordChanged event, Emitter<SignupStates> emit){
  emit(state.copyWith(
    password: event.password
  ));
 }

 void _onConfirmPasswordChanged(ConfirmPasswordChanged event, Emitter<SignupStates>emit){
  emit(state.copyWith(
    confirmPassword: event.confirmPassword,
  ));
 }

}