import 'package:auto_route/auto_route.dart';

import '../pages/login/login_page.dart';
import '../pages/register/pages/confirm_page.dart';
import '../pages/register/pages/input_page.dart';
import '../pages/register/pages/preference_page.dart';
import '../pages/register/register_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/welcome/welcome_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/'),
        AutoRoute(page: WelcomeRoute.page),

        /// Register
        AutoRoute(
          page: RegisterRoute.page,
          children: [
            AutoRoute(page: RegisterInputRoute.page, initial: true),
            AutoRoute(page: RegisterPreferenceRoute.page),
            AutoRoute(page: RegisterConfirmRoute.page),
          ],
        ),

        /// Login
        AutoRoute(page: LoginRoute.page),
      ];
}
