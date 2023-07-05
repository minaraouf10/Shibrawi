import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/enums/snack_bar.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/features/auth/presstion/signUp/controller/sign_up_provider_screen.dart';
import 'package:shibrawi/features/auth/presstion/signUp/widget/sign_up_field.dart';
import 'package:shibrawi/features/auth/presstion/signUp/widget/sign_up_title.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final signUpProvider = ref.read(signUpProviderScreen);

    ref.listen(signUpProvider.isError.provider, (_, state) {
      context.showCustomSnackBar(
        message: state,
        snackBarStatus: SnackBarStatus.error,
      );
    });

    ref.listen(signUpProvider.isSuccess.provider, (_, state) {
      if(state){
        context.pushNamed(RouteNames.loginScreen);
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SignUpTitle(),
                SignUpField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
