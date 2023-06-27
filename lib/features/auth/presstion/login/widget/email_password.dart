import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/generated/translations.g.dart';

class EmailPassword extends StatelessWidget {
  EmailPassword({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40.0),
        TextForm(
          controller: emailController,
          validate: (String? value) {
            if (value!.isEmpty) {
              return tr.email_not_empty;
            }
            return null;
          },
          labelText: tr.email,
        ),
        const SizedBox(
          height: 25.0,
        ),
        TextForm(
          controller: passwordController,
          validate: (String? value) {
            if (value!.isEmpty) {
              return tr.password_not_empty;
            }
            return null;
          },
          labelText: tr.password,
        ),
        const SizedBox(
          height: 30.0,
        ),
        DefaultButton(
          text: Translations.of(context).login,
          function: () {
            Navigator.pushNamed(context, RouteNames.shibrawiLayout,);
          },
          background: AppColors.orange,
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
