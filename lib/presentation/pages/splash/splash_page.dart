import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../components/gen/assets.gen.dart';
import '../../routes/app_router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => context
          .read<AuthBloc>()
          .add(const AuthEvent.currentUserStatusWatchStarted()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.isAuthenticated) {
          context.router.replace(const MainRoute());
        } else if (!state.isAuthenticated) {
          context.router.replace(const WelcomeRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              height: size.height * 0.5,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.logo.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
