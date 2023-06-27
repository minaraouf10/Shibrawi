import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/generated/translations.g.dart';

class SignUpField extends StatelessWidget {
  SignUpField({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
              return tr.mobile_not_empty;
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
          labelText:tr.password,
          validate: (String? value) {
            if (value!.isEmpty) {
              return tr.password_not_empty;
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
        DefaultButton(
          function: () {},
          text: tr.sign_up,
          fontSize: 16.0,
          isUpperCase: false,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              tr.already_have_an_account,
              style: TextStyle(
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
              color: AppColors.orange,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ],
    );
  }
}
