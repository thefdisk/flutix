import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_repository.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthRepository _authRepository;

  LoginFormBloc(this._authRepository) : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onLoginFormEvent);
  }

  Future<void> _onLoginFormEvent(
    LoginFormEvent event,
    Emitter<LoginFormState> emit,
  ) {
    return event.map(
      emailChanged: (e) async {
        emit(
          state.copyWith(
            email: Email(e.emailStr),
          ),
        );
      },
      passwordChanged: (e) async {
        emit(
          state.copyWith(
            password: Password(e.passwordStr),
          ),
        );
      },
      submitted: (e) async {
        Either<AuthFailure, User>? failureOrSuccess;

        emit(
          state.copyWith(
            showErrorMessages: true,
            isSubmitting: true,
            failureOrUser: null,
          ),
        );

        if (state.email.isValid() && state.password.isValid()) {
          failureOrSuccess = await _authRepository.signInWithEmailAndPassword(
            email: state.email.getOrCrash(),
            password: state.password.getOrCrash(),
          );

          if (failureOrSuccess.isRight()) {
            emit(
              state.copyWith(
                user: failureOrSuccess.getOrElse(() => User.empty()),
              ),
            );
          }
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            failureOrUser: failureOrSuccess,
          ),
        );
      },
    );
  }
}
