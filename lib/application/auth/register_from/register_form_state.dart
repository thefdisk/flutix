part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const RegisterFormState._();
  const factory RegisterFormState({
    required Register register,
    required User user,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessRegisterOption,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isRegistering,
    @Default(false) bool isSubmitting,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        register: Register.empty(),
        user: User.empty(),
        failureOrSuccessRegisterOption: none(),
      );

  bool get isFormAllFilled =>
      register.name.isNotEmpty &&
      register.email.isNotEmpty &&
      register.password.isNotEmpty &&
      register.confirmPassword.isNotEmpty;
}
