import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
      register: (e) async {
        emit(
          state.copyWith(
            showErrorMessages: true,
            isRegistering: true,
            failureOrSuccessRegisterOption: none(),
          ),
        );

        final isFullnameValid = state.register.name.isValid();
        final isEmailValid = state.register.email.isValid();
        final isPasswordValid = state.register.password.isValid();
        final isConfirmPasswordValid = state.register.confirmPassword.isValid();

        if (isFullnameValid &&
            isEmailValid &&
            isPasswordValid &&
            isConfirmPasswordValid) {
          final failureOrSuccess =
              await _authRepository.signUpWithEmailAndPassword(
            email: state.register.email.getOrElse(''),
            password: state.register.password.getOrElse(''),
          );

          emit(
            state.copyWith(
              isRegistering: false,
              failureOrSuccessRegisterOption: optionOf(failureOrSuccess),
            ),
          );
        }
      },
      genreChanged: (e) async {
        var genres = state.register.selectedGenres;

        if (genres.contains(e.genre)) {
          genres = List.from(genres)..remove(e.genre);
        } else {
          if (state.register.selectedGenres.length < 4) {
            genres = List.from(genres)..add(e.genre);
          }
        }

        emit(
          state.copyWith(
            register: state.register.copyWith(
              selectedGenres: genres,
            ),
          ),
        );
      },
      languageChanged: (e) async {
        emit(
          state.copyWith(
            register: state.register.copyWith(
              selectedLanguage: e.language,
            ),
          ),
        );
      },
      userUpdated: (e) async {
        // emit(
        //   state.copyWith(
        //     isSubmitting: true,
        //     failureOrSuccessRegisterOption: none(),
        //   ),
        // );

        // final failureOrSuccess =
        //     await _authRepository.signUpWithEmailAndPassword(
        //   email: state.register.email.getOrCrash(),
        //   password: state.register.password.getOrCrash(),
        // );

        // if (failureOrSuccess.isLeft()) {
        //   emit(
        //     state.copyWith(
        //       isSubmitting: false,
        //       // failureOrSuccessOption: optionOf(failureOrSuccess),
        //     ),
        //   );
        // }

        // if (failureOrSuccess.isRight()) {
        //   await _authRepository.updateUser();
        // }
      },
    );
  }
}
