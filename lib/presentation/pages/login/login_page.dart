import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../components/fields/app_text_form_field.dart';
import '../../components/gen/assets.gen.dart';
import '../../components/styles/typography.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const AppTextFormField(),
              const SizedBox(height: 16),
              const AppTextFormField(),
              const SizedBox(height: 30),
              Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
