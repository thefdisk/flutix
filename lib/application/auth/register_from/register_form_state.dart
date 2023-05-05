part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const RegisterFormState._();
  const factory RegisterFormState({
    required Register register,
    required User user,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isFormfieldValid,
    @Default(false) bool isSubmitting,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        register: Register.empty(),
        user: User.empty(),
        failureOrSuccessOption: none(),
      );

  bool get isFormAllFilled =>
      register.name.isNotEmpty &&
      register.email.isNotEmpty &&
      register.password.isNotEmpty &&
      register.confirmPassword.isNotEmpty;
}
