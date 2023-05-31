import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/login_form/login_form_bloc.dart';
import '../../../components/fields/app_text_form_field.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              AppTextFormField(
                labelText: 'Email Address',
                onChanged: (value) => context
                    .read<LoginFormBloc>()
                    .add(LoginFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<LoginFormBloc>()
                    .state
                    .email
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            empty: (_) => 'Tidak boleh kosong.',
                            invalidEmail: (_) => 'Format email salah.'),
                        (_) => null),
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                labelText: 'Password',
                obscureText: true,
                onChanged: (value) => context
                    .read<LoginFormBloc>()
                    .add(LoginFormEvent.passwordChanged(value)),
                validator: (_) => context
                    .read<LoginFormBloc>()
                    .state
                    .password
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            empty: (_) => 'Tidak boleh kosong.',
                            shortPassword: (_) =>
                                'Minimal panjang password 6 karakter.'),
                        (r) => null),
              ),
            ],
          ),
        );
      },
    );
  }
}
