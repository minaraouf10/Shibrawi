import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/enums/snack_bar.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/features/auth/presstion/login/controller/login_provider_screen.dart';
import 'package:shibrawi/features/auth/presstion/login/widget/email_password.dart';
import 'package:shibrawi/features/auth/presstion/login/widget/login_with_google.dart';
import 'package:shibrawi/features/auth/presstion/login/widget/top_screen.dart';

class LoginScreen extends ConsumerWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final loginProvider = ref.read(loginProviderScreen);

    ref.listen(loginProvider.isError.provider, (_, state) {
      context.showCustomSnackBar(
        message: state,
        snackBarStatus: SnackBarStatus.error,
      );
    });

    ref.listen(loginProvider.isSuccess.provider, (_, state) {
      if(state)
      {
        context.pushNamed(RouteNames.shibrawiLayout);
      }
    });

    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopScreen(),
                EmailPassword(),
                LoginWithGoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
