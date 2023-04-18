import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../components/fields/app_text_form_field.dart';
import '../../../components/gen/assets.gen.dart';
import '../../../components/gen/colors.gen.dart';
import '../../../components/styles/typography.dart';

@RoutePage()
class RegisterInputPage extends StatelessWidget {
  const RegisterInputPage({super.key});

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
          'Create New Account',
          style: AppTypography(context).heading2,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        children: [
          SizedBox(
            height: 104,
            width: 90,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: Assets.images.userPic.provider(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: Assets.images.btnAddPhoto.provider(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const AppTextFormField(
            labelText: 'Fullname',
          ),
          const SizedBox(height: 16),
          const AppTextFormField(
            labelText: 'Email Address',
          ),
          const SizedBox(height: 16),
          const AppTextFormField(
            labelText: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 16),
          const AppTextFormField(
            labelText: 'Confirm Password',
            obscureText: true,
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            backgroundColor: ColorName.mainColor,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
