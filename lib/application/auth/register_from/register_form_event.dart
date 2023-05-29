part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.photoProfileAdded(File photoProfile) =
      _PhotoProfileAdded;
  const factory RegisterFormEvent.photoProfileDeleted() = _PhotoProfileDeleted;
  const factory RegisterFormEvent.fullNameChanged(String fullname) =
      _FullNameChanged;
  const factory RegisterFormEvent.emailChanged(String email) = _EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory RegisterFormEvent.confirmPasswordChanged(
      String confirmPassword) = _ConfirmPasswordChanged;
  const factory RegisterFormEvent.register() = _Register;
  const factory RegisterFormEvent.genreChanged(String genre) = _GenreChanged;
  const factory RegisterFormEvent.languageChanged(String language) =
      _languageChanged;
  const factory RegisterFormEvent.userUpdated() = _UserUpdated;
}
