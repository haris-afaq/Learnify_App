import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_events.dart';
import 'package:learnify_app/bloc/signup_bloc/signup_states.dart';
import 'package:learnify_app/repositories/auth_repositories/signup_repo.dart';
import 'package:learnify_app/utils/auth_states.dart';

class SignupBloc extends Bloc<SignupEvents, SignupStates> {
  SignupRepository signupRepository = SignupRepository();

  SignupBloc() : super(SignupStates()) {
    on<UserNameChanged>(_onUserNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<SignUpButtonClicked>(_onSignUpButtonClicked);
  }

  void _onUserNameChanged(
      UserNameChanged event, Emitter<SignupStates> emit) {
    emit(
      state.copyWith(
        userName: event.userName,
      ),
    );
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignupStates> emit) {
    emit(state.copyWith(
      email: event.email,
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignupStates> emit) {
    emit(state.copyWith(
      password: event.password,
    ));
  }

  void _onConfirmPasswordChanged(
      ConfirmPasswordChanged event, Emitter<SignupStates> emit) {
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
    ));
  }

  Future<void> _onSignUpButtonClicked(
      SignUpButtonClicked event, Emitter<SignupStates> emit) async {
    if (state.password != state.confirmPassword) {
      emit(state.copyWith(
        authStates: AuthStates.error,
        message: "Passwords do not match",
      ));
      return;
    }

    emit(state.copyWith(
      authStates: AuthStates.loading,
    ));

    try {
      await Future.delayed(const Duration(milliseconds: 100)); 

      await signupRepository.Signup(
        email: state.email,
        userName: state.userName,
        password: state.password,
      );

      emit(state.copyWith(
        authStates: AuthStates.success,
        message: "Signup Successful",
      ));

      debugPrint("Signup successful for: ${state.email}");
    } catch (e) {
      emit(state.copyWith(
        authStates: AuthStates.error,
        message: e.toString().replaceAll('Exception: ', ''),
      ));
      debugPrint("Signup error: $e");
    }
  }
}