import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/register_form/register_form_bloc.dart';
import '../../../components/fields/app_text_form_field.dart';

class RegisterField extends StatelessWidget {
  const RegisterField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              AppTextFormField(
                labelText: 'Fullname',
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.fullNameChanged(value)),
                validator: (_) => context
                    .read<RegisterFormBloc>()
                    .state
                    .register
                    .name
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            empty: (_) => 'Tidak boleh kosong.'),
                        (_) => null),
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                labelText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<RegisterFormBloc>()
                    .state
                    .register
                    .email
                    .value
                    .fold(
                      (f) => f.maybeMap(
                          orElse: () => null,
                          empty: (_) => 'Tidak boleh kosong.',
                          invalidEmail: (_) => 'Format email salah.'),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                labelText: 'Password',
                obscureText: true,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.passwordChanged(value)),
                validator: (_) => context
                    .read<RegisterFormBloc>()
                    .state
                    .register
                    .password
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        orElse: () => null,
                        empty: (_) => 'Tidak boleh kosong.',
                        shortPassword: (_) =>
                            'Minimal panjang password 6 karakter',
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                labelText: 'Confirm Password',
                obscureText: true,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.confirmPasswordChanged(value)),
                validator: (_) => context
                    .read<RegisterFormBloc>()
                    .state
                    .register
                    .confirmPassword
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        orElse: () => null,
                        empty: (_) => 'Tidak boleh kosong.',
                        passwordAndConfirmNotMatch: (_) =>
                            'Password tidak sama.',
                        shortPassword: (_) =>
                            'Minimal panjang password 6 karakter',
                      ),
                      (_) => null,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }
}
