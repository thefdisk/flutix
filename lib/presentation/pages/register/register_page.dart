import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/register_from/register_form_bloc.dart';
import '../../../injection.dart';
import '../../routes/app_router.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        RegisterInputRoute(),
        RegisterPreferenceRoute(),
        RegisterConfirmRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return WillPopScope(
          onWillPop: () async {
            if (tabsRouter.activeIndex == 0) {
              return true;
            } else if (tabsRouter.activeIndex == 1) {
              tabsRouter.setActiveIndex(0);
              return false;
            } else if (tabsRouter.activeIndex == 2) {
              tabsRouter.setActiveIndex(1);
              return false;
            }
            return true;
          },
          child: child,
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<RegisterFormBloc>(),
        child: this,
      );
}
