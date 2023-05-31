part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const RegisterFormState._();

  const factory RegisterFormState({
    required Register register,
    required Either<AuthFailure, User>? failureOrSuccessRegister,
    required Either<AuthFailure, String>? failureOrSuccessUploadPhotoProfile,
    required Either<AuthFailure, Unit>? failureOrSuccessUpdateUser,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isRegistering,
    @Default(false) bool isUpdatingUser,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        register: Register.empty(),
        failureOrSuccessRegister: null,
        failureOrSuccessUploadPhotoProfile: null,
        failureOrSuccessUpdateUser: null,
      );

  bool get isFormAllFilled =>
      register.name.isNotEmpty &&
      register.email.isNotEmpty &&
      register.password.isNotEmpty &&
      register.confirmPassword.isNotEmpty;
}
