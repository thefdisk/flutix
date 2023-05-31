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
        if (state.register.photoImage == null) {
          emit(
            state.copyWith(
              register: state.register.copyWith(
                photoImage: e.photoImage,
              ),
            ),
          );
        }
      },
      photoProfileDeleted: (e) async {
        if (state.register.photoImage != null) {
          emit(
            state.copyWith(
              register: state.register.copyWith(
                photoImage: null,
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
            failureOrSuccessRegister: null,
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

          if (failureOrSuccess.isRight()) {
            emit(
              state.copyWith(
                register: state.register.copyWith(
                  uid: failureOrSuccess.getOrElse(() => User.empty()).uid,
                ),
              ),
            );
          }

          emit(
            state.copyWith(
              isRegistering: false,
              failureOrSuccessRegister: failureOrSuccess,
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
        emit(
          state.copyWith(
            isUpdatingUser: true,
            failureOrSuccessUpdateUser: null,
          ),
        );

        if (state.register.photoImage != null) {
          final failureOrSuccess = await _authRepository.uploadPhotoProfile(
            user: state.register.toUserDomain(),
            photoImage: state.register.photoImage!,
          );

          if (failureOrSuccess.isLeft()) {
            emit(
              state.copyWith(
                isUpdatingUser: false,
                failureOrSuccessUploadPhotoProfile: failureOrSuccess,
              ),
            );
            return;
          } else {
            emit(
              state.copyWith(
                register: state.register.copyWith(
                  photoUrl: failureOrSuccess.getOrElse(() => ''),
                ),
              ),
            );
          }
        }

        final failureOrSuccess = await _authRepository.updateUser(
          user: state.register.toUserDomain(),
        );

        emit(
          state.copyWith(
            isUpdatingUser: false,
            failureOrSuccessUpdateUser: failureOrSuccess,
          ),
        );
      },
    );
  }
}
