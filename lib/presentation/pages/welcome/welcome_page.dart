import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../components/buttons/elevated_button.dart';
import '../../components/gen/assets.gen.dart';
import '../../components/gen/colors.gen.dart';
import '../../components/styles/typography.dart';
import '../../routes/app_router.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 136,
              width: 130,
              margin: const EdgeInsets.only(bottom: 70),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.logo.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'New Experience',
              style: AppTypography(context).heading1,
            ),
            const SizedBox(height: 16),
            Text(
              'Watch a new movie much\neasier than any before',
              textAlign: TextAlign.center,
              style: AppTypography(context)
                  .heading2
                  .copyWith(color: ColorName.accentColor3),
            ),
            const SizedBox(height: 70),
            AppElevatedButton(
              onPressed: () => context.pushRoute(const RegisterRoute()),
              child: const Text('Get Started'),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Already have an account?',
                style: AppTypography(context).body1,
                children: [
                  TextSpan(
                    text: ' Sign in',
                    style: AppTypography(context)
                        .body1
                        .copyWith(color: ColorName.mainColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.pushRoute(const LoginRoute()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
