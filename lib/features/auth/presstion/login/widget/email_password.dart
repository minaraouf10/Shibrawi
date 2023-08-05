import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/features/auth/presstion/login/controller/login_provider_screen.dart';
import 'package:shibrawi/generated/translations.g.dart';

class EmailPassword extends ConsumerWidget {
  const EmailPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final loginProvider = ref.read(loginProviderScreen);

    return Column(
      children: [
        const SizedBox(height: 40.0),
        TextForm(
          controller: loginProvider.emailController,
          validate: loginProvider.emailValidation,
          labelText: tr.email,
        ),
        const SizedBox(
          height: 25.0,
        ),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return TextForm(
            controller: loginProvider.passwordController,
            validate: loginProvider.passwordValidation,
            onSubmitted:(value) {
               loginProvider.userLogin();
            } ,
            labelText: tr.password,
          );
            },
        ),
        const SizedBox(
          height: 30.0,
        ),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return DefaultButton(
              isLoading: ref.watch(loginProvider.isLoading.provider),
              text: tr.login,
              function: loginProvider.userLogin,
              background: AppColors.primary,
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        DefaultTextButton(
          text: tr.forget_password,
          function: () {},
          color: AppColors.lightBlack,
          fontSize: 15.0,
        ),
      ],
    );
  }
}
