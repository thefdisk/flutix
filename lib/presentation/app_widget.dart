import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../application/auth/auth_bloc.dart';
import '../application/notification_controller/notification_remote_controller.dart';
import '../common/functions/app_functions.dart';
import '../injection.dart';
import 'routes/app_router.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
    NotificationController.startListeningNotificationEvents();
    NotificationController.requestFirebaseToken();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: const Center(
          child: SpinKitFadingCircle(
            color: Color(0xFF3E9D9D),
            size: 45,
          ),
        ),
        child: MaterialApp.router(
          title: 'Flutix',
          routerConfig: _appRouter.config(),
          theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              },
            ),
          ),
          builder: (context, child) => GestureDetector(
            onTap: () => dismissKeyboard(context),
            child: child,
          ),
        ),
      ),
    );
  }
}
