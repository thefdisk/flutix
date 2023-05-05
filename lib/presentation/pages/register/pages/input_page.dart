import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/register_from/register_form_bloc.dart';
import '../../../components/gen/colors.gen.dart';
import '../../../components/styles/typography.dart';
import '../widgets/photo_profile_field_widget.dart';
import '../widgets/register_field.dart';

@RoutePage()
class RegisterInputPage extends StatelessWidget {
  const RegisterInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterFormBloc, RegisterFormState>(
      listenWhen: (p, c) => p.isFormfieldValid != c.isFormfieldValid,
      listener: (context, state) {
        if (state.isFormfieldValid) {
          AutoTabsRouter.of(context).setActiveIndex(1);
        }
      },
      child: Scaffold(
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
            const PhotoProfileFieldWidget(),
            const SizedBox(height: 16),
            const RegisterField(),
            const SizedBox(height: 30),
            BlocBuilder<RegisterFormBloc, RegisterFormState>(
              buildWhen: (p, c) => p.isFormAllFilled != c.isFormAllFilled,
              builder: (context, state) {
                return FloatingActionButton(
                  heroTag: null,
                  onPressed: state.isFormAllFilled
                      ? () => context
                          .read<RegisterFormBloc>()
                          .add(const RegisterFormEvent.validateField())
                      : null,
                  elevation: 0,
                  backgroundColor: state.isFormAllFilled
                      ? ColorName.mainColor
                      : ColorName.accentColor3,
                  child: const Icon(Icons.arrow_forward),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
