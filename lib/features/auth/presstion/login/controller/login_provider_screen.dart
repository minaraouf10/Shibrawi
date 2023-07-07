import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/auth/data/service/auth_service.dart';
import 'package:shibrawi/generated/translations.g.dart';

final loginProviderScreen = Provider<LoginLogic>(
  (ref) => LoginLogic(ref: ref, authService: ref.read(authServiceProvider)),
);

class LoginLogic extends _LoginStates {
  LoginLogic({required this.authService, required super.ref});

  final AuthService authService;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  Future<void> userLogin() async {
    try {
      isLoading.state = true;

      await authService.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
  }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return tr.email_not_empty;
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return tr.password_not_empty;
    }
    return null;
  }
}

class _LoginStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<bool> isSuccess;

  _LoginStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        isSuccess = CustomState<bool>(ref, false);
}
