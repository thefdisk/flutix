import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/register_form/register_form_bloc.dart';
import '../../../components/buttons/box_button.dart';
import '../../../components/gen/colors.gen.dart';
import '../../../components/styles/typography.dart';

@RoutePage()
class RegisterPreferencePage extends StatelessWidget {
  const RegisterPreferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    double widthBox = (MediaQuery.of(context).size.width - 2 * 24 - 24) / 2;

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
          BlocBuilder<RegisterFormBloc, RegisterFormState>(
            builder: (context, state) {
              return Wrap(
                spacing: 24,
                runSpacing: 24,
                children: _genres
                    .map(
                      (genre) => BoxButton(
                        width: widthBox,
                        text: genre,
                        onTap: () => context
                            .read<RegisterFormBloc>()
                            .add(RegisterFormEvent.genreChanged(genre)),
                        isSelected:
                            state.register.selectedGenres.contains(genre),
                      ),
                    )
                    .toList(),
              );
            },
          ),
          const SizedBox(height: 24),
          Text(
            'Movie Language\nYou Prefer?',
            style: AppTypography(context).heading1,
          ),
          const SizedBox(height: 16),
          BlocBuilder<RegisterFormBloc, RegisterFormState>(
            builder: (context, state) {
              return Wrap(
                spacing: 24,
                runSpacing: 24,
                children: _languages
                    .map(
                      (lang) => BoxButton(
                        width: widthBox,
                        text: lang,
                        onTap: () => context
                            .read<RegisterFormBloc>()
                            .add(RegisterFormEvent.languageChanged(lang)),
                        isSelected: state.register.selectedLanguage == lang,
                      ),
                    )
                    .toList(),
              );
            },
          ),
          const SizedBox(height: 24),
          BlocBuilder<RegisterFormBloc, RegisterFormState>(
            builder: (context, state) {
              final isValid = state.register.selectedGenres.isNotEmpty &&
                  state.register.selectedLanguage.isNotEmpty;

              return FloatingActionButton(
                heroTag: null,
                onPressed: isValid
                    ? () => AutoTabsRouter.of(context).setActiveIndex(2)
                    : null,
                elevation: 0,
                backgroundColor:
                    isValid ? ColorName.mainColor : ColorName.accentColor3,
                child: const Icon(Icons.arrow_forward),
              );
            },
          ),
        ],
      ),
    );
  }
}

final List<String> _genres = [
  'Horror',
  'Music',
  'Action',
  'Drama',
  'War',
  'Crime',
];
final List<String> _languages = [
  'Bahasa',
  'English',
  'Japanese',
  'Korean',
];
