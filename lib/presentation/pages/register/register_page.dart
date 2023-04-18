import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/app_router.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        RegisterInputRoute(),
        RegisterGenreAndLangRoute(),
        RegisterConfirmRoute(),
      ],
      builder: (context, child, pageController) {
        return WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: child,
        );
      },
    );
  }
}
