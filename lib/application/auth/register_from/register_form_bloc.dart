import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_repository.dart';
import '../../../domain/auth/register/register.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/value_objects.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthRepository _authRepository;

  RegisterFormBloc(this._authRepository) : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>(_onRegisterFormEvent);
  }

  Future<void> _onRegisterFormEvent(
    RegisterFormEvent event,
    Emitter<RegisterFormState> emit,
  ) {
    return event.map(
      photoProfileAdded: (e) async {
        if (state.register.profilePicture == null) {
          emit(
            state.copyWith(
              register: state.register.copyWith(
                profilePicture: e.photoProfile,
              ),
            ),
          );
        }
      },
      photoProfileDeleted: (e) async {
        if (state.register.profilePicture != null) {
          emit(
            state.copyWith(
              register: state.register.copyWith(
                profilePicture: null,
              ),
            ),
          );
        }
      },
      fullNameChanged: (e) async {
        emit(
          state.copyWith(
            register: state.register.copyWith(
              name: StringSingleLine(e.fullname),
            ),
          ),
        );
      },
      emailChanged: (e) async {
        emit(
          state.copyWith(
            register: state.register.copyWith(
              email: Email(e.email),
            ),
          ),
        );
      },
      passwordChanged: (e) async {
        emit(
          state.copyWith(
            register: state.register.copyWith(
              password: Password(e.password),
            ),
          ),
        );
      },
      confirmPasswordChanged: (e) async {
        emit(
          state.copyWith(
            register: state.register.copyWith(
              confirmPassword: ConfirmPassword(
                e.confirmPassword,
                state.register.password.getOrElse(''),
              ),
            ),
          ),
        );
      },
      validateField: (e) async {
        emit(
          state.copyWith(
            showErrorMessages: true,
            isFormfieldValid: false,
          ),
        );

        final isFullnameValid = state.register.name.isValid();
        final isEmailValid = state.register.email.isValid();
        final isPasswordValid = state.register.password.isValid();
        final isConfirmPasswordValid = state.register.confirmPassword.isValid();

        debugPrint(isConfirmPasswordValid.toString());

        if (isFullnameValid &&
            isEmailValid &&
            isPasswordValid &&
            isConfirmPasswordValid) {
          emit(
            state.copyWith(
              isFormfieldValid: true,
            ),
          );
        }
      },
    );
  }
}
