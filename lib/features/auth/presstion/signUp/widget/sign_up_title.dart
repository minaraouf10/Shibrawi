import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/generated/translations.g.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Text(
          tr.sign_up,
          style: const TextStyle(
            fontSize: 40.0,
            color: AppColors.loginBlack,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
         tr.add_your_details_to_sign_up,
          style: const TextStyle(
            fontSize: 14.0,
            color: AppColors.lightBlack,
          ),
        ),
        const SizedBox(height: 20.0,)
      ],
    );
  }
}
