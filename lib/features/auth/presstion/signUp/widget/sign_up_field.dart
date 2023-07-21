import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/features/auth/presstion/signUp/controller/sign_up_provider_screen.dart';
import 'package:shibrawi/generated/translations.g.dart';

class SignUpField extends ConsumerWidget {
  SignUpField({Key? key}) : super(key: key);

  final addressController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final signUpProvider = ref.read(signUpProviderScreen);

    return Column(
      children: [
        TextForm(
          controller: signUpProvider.nameController,
          labelText: tr.name,
          validate: (String? value) {
            if (value!.isEmpty) {
              return tr.name_not_empty;
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextForm(
          controller: signUpProvider.emailController,
          labelText: tr.email,
          validate: signUpProvider.emailValidation,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextForm(
          controller: signUpProvider.phoneController,
          labelText: tr.mobile,
          validate: signUpProvider.phoneValidation,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextForm(
          controller: addressController,
          labelText: tr.address,
          validate: (String? value) {
            if (value!.isEmpty) {
              return tr.address_not_empty;
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextForm(
          controller: signUpProvider.passwordController,
          labelText: tr.password,
          validate: signUpProvider.passwordValidation,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextForm(
          controller: confirmPasswordController,
          labelText: tr.confirm_password,
          validate: (String? value) {
            if (value!.isEmpty) {
              return tr.confirm_password_not_empty;
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20.0,
        ),
        Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return DefaultButton(
            isLoading: ref.watch(signUpProvider.isLoading.provider),
            function: () {
              signUpProvider.signUp();
            },
            text: tr.sign_up,
            fontSize: 16.0,
            isUpperCase: false,
          );
        }),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tr.already_have_an_account,
              style: const TextStyle(
                fontSize: 14.0,
                color: AppColors.lightBlack,
              ),
            ),
            DefaultTextButton(
              text: tr.login,
              function: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.loginScreen,
                );
              },
              color: AppColors.primary,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ],
    );
  }
}
