part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.photoProfileChanged(File photoProfile) =
      _PhotoProfileChanged;
  const factory RegisterFormEvent.fullNameChanged(String fullname) =
      _FullNameChanged;
  const factory RegisterFormEvent.emailChanged(String email) = _EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory RegisterFormEvent.confirmPasswordChanged(
      String confirmPassword) = _ConfirmPasswordChanged;
}
