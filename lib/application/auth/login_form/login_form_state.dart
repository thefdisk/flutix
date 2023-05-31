part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();

  const factory LoginFormState({
    required Email email,
    required Password password,
    required User user,
    required Either<AuthFailure, User>? failureOrUser,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isSubmitting,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        email: Email(''),
        password: Password(''),
        user: User.empty(),
        failureOrUser: null,
      );

  bool get isAllFormFilled => email.isNotEmpty && password.isNotEmpty;
}
