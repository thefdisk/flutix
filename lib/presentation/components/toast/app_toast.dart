// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../domain/auth/auth_failure.dart';
import '../gen/colors.gen.dart';
import '../styles/typography.dart';

class _ToastView extends StatelessWidget {
  const _ToastView({
    super.key,
    this.backgroundColor,
    required this.child,
  });

  final Color? backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor ?? ColorName.accentColor2,
      ),
      child: child,
    );
  }
}

class AppToast {
  final BuildContext context;
  late FToast _fToast;

  AppToast(this.context) {
    _fToast = FToast();
    _fToast.init(context);
  }

  void _showBottomToast({
    required Widget child,
    Color? backgroundColor,
  }) =>
      _fToast.showToast(
        child: _ToastView(
          backgroundColor: backgroundColor,
          child: child,
        ),
        gravity: ToastGravity.BOTTOM,
      );

  showNegativeToast({
    required String textStr,
  }) =>
      _showBottomToast(
        child: Text(
          textStr,
          style: AppTypography(context).body1,
        ),
        backgroundColor: Colors.pinkAccent,
      );

  showAuthFailureToast(AuthFailure failure) =>
      AppToast(context).showNegativeToast(
        textStr: failure.map(
          unexpectedError: (_) => 'Terjadi kesalahan',
          userNotFound: (_) => 'Pengguna tidak ditemukan',
          invalidEmailPassword: (_) => 'Email dan password tidak valid',
          emailAlreadyInUse: (_) => 'Email sudah terdaftar',
          dynamicErrorMessage: (value) => value.errorMessage,
        ),
      );
}
