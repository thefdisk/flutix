import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../../injection.dart';
import '../../components/gen/assets.gen.dart';
import '../../components/gen/colors.gen.dart';
import '../../components/styles/typography.dart';
import '../../components/toast/app_toast.dart';
import '../../routes/app_router.dart';
import 'widgets/login_field.dart';

@RoutePage()
class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginFormBloc, LoginFormState>(
          listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
          listener: (context, state) {
            if (state.isSubmitting) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }

            state.failureOrUser?.fold(
              (f) => AppToast(context).showAuthFailureToast(f),
              (_) => context
                  .read<AuthBloc>()
                  .add(const AuthEvent.fetchDetailUser()),
            );
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (p, c) => p.isFetching != c.isFetching,
          listener: (context, state) {
            if (state.isFetching) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }

            state.failureOrUser?.fold(
              (f) => AppToast(context).showAuthFailureToast(f),
              (user) {
                if (user.isPreferenceFilled) {
                  context.router.replaceAll([const MainRoute()]);
                } else {
                  context.router.replace(
                    RegisterRoute(
                      initialUser: user,
                    ),
                  );
                }
              },
            );
          },
        ),
      ],
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, bottom: 70),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.images.logo.provider(),
                    ),
                  ),
                ),
                Text(
                  'Welcome Back,\nExplorer!',
                  style: AppTypography(context).heading1,
                ),
                const SizedBox(height: 40),
                const LoginField(),
                const SizedBox(height: 30),
                BlocBuilder<LoginFormBloc, LoginFormState>(
                  builder: (context, state) {
                    return Center(
                      child: FloatingActionButton(
                        onPressed: state.isAllFormFilled
                            ? () => context
                                .read<LoginFormBloc>()
                                .add(const LoginFormEvent.submitted())
                            : null,
                        elevation: 0,
                        backgroundColor: state.isAllFormFilled
                            ? ColorName.mainColor
                            : ColorName.accentColor3,
                        child: const Icon(Icons.arrow_forward),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 50),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Start fresh now?',
                      style: AppTypography(context).body1,
                      children: [
                        TextSpan(
                          text: ' Sign Up',
                          style: AppTypography(context)
                              .body1
                              .copyWith(color: ColorName.mainColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => context.router.replace(
                                  RegisterRoute(),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<LoginFormBloc>(),
        child: this,
      );
}
