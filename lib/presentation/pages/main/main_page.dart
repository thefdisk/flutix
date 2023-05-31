import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../components/gen/assets.gen.dart';
import '../../components/gen/colors.gen.dart';
import '../../components/styles/typography.dart';
import '../../components/toast/app_toast.dart';
import '../../routes/app_router.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.fetchDetailUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (p, c) => p.isLogouting != c.isLogouting,
      listener: (context, state) {
        if (state.isLogouting) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }

        state.failureOrSuccessLogout?.fold(
          (f) => AppToast(context).showAuthFailureToast(f),
          (_) => context.router.replaceAll([const WelcomeRoute()]),
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 30,
                left: 24,
                right: 24,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ColorName.accentColor1,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  final user = state.user;

                  return Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: user.photoUrl.isEmpty
                                ? Assets.images.userPic.provider()
                                : NetworkImage(user.photoUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: AppTypography(context)
                                .subtitle1
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'IDR ${user.balance.toString()}',
                            style: AppTypography(context)
                                .subtitle1
                                .copyWith(color: ColorName.accentColor2),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
