import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../application/auth/register_form/register_form_bloc.dart';
import '../../../components/buttons/elevated_button.dart';
import '../../../components/gen/assets.gen.dart';
import '../../../components/gen/colors.gen.dart';
import '../../../components/styles/typography.dart';
import '../../../components/toast/app_toast.dart';
import '../../../routes/app_router.dart';

@RoutePage()
class RegisterConfirmPage extends StatelessWidget {
  const RegisterConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RegisterFormBloc, RegisterFormState>(
          listenWhen: (p, c) => p.isUpdatingUser != c.isUpdatingUser,
          listener: (context, state) {
            if (state.isUpdatingUser) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }

            state.failureOrSuccessUpdateUser?.fold(
              (f) => AppToast(context).showAuthFailureToast(f),
              (_) => context.router.replaceAll([const MainRoute()]),
            );
          },
        ),
        BlocListener<RegisterFormBloc, RegisterFormState>(
          listenWhen: (p, c) =>
              p.failureOrSuccessUploadPhotoProfile !=
              c.failureOrSuccessUploadPhotoProfile,
          listener: (context, state) {
            state.failureOrSuccessUploadPhotoProfile?.fold(
              (f) => AppToast(context).showAuthFailureToast(f),
              (_) {},
            );
          },
        ),
      ],
      child: Scaffold(
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
              BlocBuilder<RegisterFormBloc, RegisterFormState>(
                buildWhen: (p, c) =>
                    p.register.photoImage != c.register.photoImage,
                builder: (context, state) {
                  final profilePicture = state.register.photoImage;

                  return Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(top: 90, bottom: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: profilePicture == null
                            ? Assets.images.userPic.provider()
                            : FileImage(profilePicture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Text(
                'Welcome',
                style: AppTypography(context).heading2,
              ),
              BlocBuilder<RegisterFormBloc, RegisterFormState>(
                buildWhen: (p, c) => p.register.name != c.register.name,
                builder: (context, state) {
                  return Text(
                    state.register.name.getOrElse(''),
                    textAlign: TextAlign.center,
                    style: AppTypography(context).heading1,
                  );
                },
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
            onPressed: () => context
                .read<RegisterFormBloc>()
                .add(const RegisterFormEvent.userUpdated()),
            color: ColorName.accentColor4,
            child: const Text('Create My Account'),
          ),
        ),
      ),
    );
  }
}
