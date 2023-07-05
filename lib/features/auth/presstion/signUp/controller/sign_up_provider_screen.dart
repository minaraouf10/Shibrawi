import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/auth/data/service/auth_service.dart';
import 'package:shibrawi/generated/translations.g.dart';

final signUpProviderScreen = Provider<SignUpLogic>(
  (ref) => SignUpLogic(ref: ref, authService: ref.read(authServiceProvider)),
);

class SignUpLogic extends _SignUpStates {
  SignUpLogic({required this.authService, required super.ref});

  final AuthService authService;

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController imageController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp() async {
    try {
      isLoading.state = true;

      await authService.signUp(
        nameController.text.trim(),
        emailController.text.trim(),
        passwordController.text.trim(),
        phoneController.text.trim(),
      );
      isSuccess.state = true;
    } catch (e) {
      isError.state = e.toString();
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

  String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return tr.name_not_empty;
    }
    return null;
  }

  String? phoneValidation(String? value) {
    if (value!.isEmpty) {
      return tr.mobile_not_empty;
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

class _SignUpStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<bool> isSuccess;

  _SignUpStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        isSuccess = CustomState<bool>(ref, false);
}
