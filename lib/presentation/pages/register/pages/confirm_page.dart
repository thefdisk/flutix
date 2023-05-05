import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../components/buttons/elevated_button.dart';
import '../../../components/gen/assets.gen.dart';
import '../../../components/gen/colors.gen.dart';
import '../../../components/styles/typography.dart';

@RoutePage()
class RegisterConfirmPage extends StatelessWidget {
  const RegisterConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Confirm New Account',
          style: AppTypography(context).heading2,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.only(top: 90, bottom: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: Assets.images.userPic.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Welcome',
              style: AppTypography(context).heading2,
            ),
            Text(
              'widget.registrationData.name',
              textAlign: TextAlign.center,
              style: AppTypography(context).heading3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 55,
        ),
        child: AppElevatedButton(
          onPressed: () {},
          color: ColorName.accentColor4,
          child: const Text('Create My Account'),
        ),
      ),
    );
  }
}
