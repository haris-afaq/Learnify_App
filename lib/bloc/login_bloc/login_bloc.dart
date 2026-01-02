import 'package:bloc/bloc.dart';
import 'package:learnify_app/bloc/login_bloc/login_events.dart';
import 'package:learnify_app/bloc/login_bloc/login_states.dart';

class LoginBloc extends Bloc<LoginEvents, Loginstates>{
LoginBloc(): super(Loginstates()){
   on<EmailChanged> (_onEmailChanged);
   on<PasswordChanged> (_onPasswordChanged);
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

}