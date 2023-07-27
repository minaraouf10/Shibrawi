import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/generated/translations.g.dart';

class ProfileBody extends StatelessWidget {
  ProfileBody({super.key});

  final addressController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TextForm(
              controller: nameController,
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
              controller: emailController,
              labelText: tr.email,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return tr.email_not_empty;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextForm(
              controller: phoneController,
              labelText: tr.mobile,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return tr.email_not_empty;
                }
                return null;
              },
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
              controller: passwordController,
              labelText: tr.password,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return tr.email_not_empty;
                }
                return null;
              },
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
            Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return DefaultButton(
                // isLoading: ref.watch(signUpProvider.isLoading.provider),
                function: () {
                  // signUpProvider.signUp();
                },
                text: 'Save',
                fontSize: 16.0,
                isUpperCase: false,
              );
            }),
            const SizedBox(
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
