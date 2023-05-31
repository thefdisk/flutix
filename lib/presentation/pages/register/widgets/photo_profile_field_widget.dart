import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/register_form/register_form_bloc.dart';
import '../../../../common/functions/app_functions.dart';
import '../../../components/gen/assets.gen.dart';

class PhotoProfileFieldWidget extends StatelessWidget {
  const PhotoProfileFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      buildWhen: (p, c) => p.register.photoImage != c.register.photoImage,
      builder: (context, state) {
        final profilePicture = state.register.photoImage;

        return SizedBox(
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
                      image: profilePicture == null
                          ? Assets.images.userPic.provider()
                          : FileImage(profilePicture),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: profilePicture == null
                      ? () async {
                          final image = await getImage();

                          if (image != null && context.mounted) {
                            context
                                .read<RegisterFormBloc>()
                                .add(RegisterFormEvent.photoProfileAdded(
                                  File(image.path),
                                ));
                          }
                        }
                      : () => context
                          .read<RegisterFormBloc>()
                          .add(const RegisterFormEvent.photoProfileDeleted()),
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: profilePicture == null
                            ? Assets.images.btnAddPhoto.provider()
                            : Assets.images.btnDelPhoto.provider(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
