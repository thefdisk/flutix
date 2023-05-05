import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../components/buttons/box_button.dart';
import '../../../components/gen/colors.gen.dart';
import '../../../components/styles/typography.dart';

@RoutePage()
class RegisterPreferencePage extends StatelessWidget {
  const RegisterPreferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        children: [
          Text(
            'Select Your\nFavorite Genre',
            style: AppTypography(context).heading1,
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: genres
                .map(
                  (e) => BoxButton(
                    text: e,
                    onTap: () {},
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 24),
          Text(
            'Movie Language\nYou Prefer?',
            style: AppTypography(context).heading1,
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: languages
                .map(
                  (e) => BoxButton(
                    text: e,
                    onTap: () {},
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 24),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => AutoTabsRouter.of(context).setActiveIndex(2),
            elevation: 0,
            backgroundColor: ColorName.mainColor,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

final List<String> genres = [
  'Horror',
  'Music',
  'Action',
  'Drama',
  'War',
  'Crime',
];
final List<String> languages = [
  'Bahasa',
  'English',
  'Japanese',
  'Korean',
];
