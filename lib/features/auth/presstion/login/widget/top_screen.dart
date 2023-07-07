import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/generated/translations.g.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tr.login,
          style: const TextStyle(fontSize: 40.0, color: AppColors.loginBlack),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          tr.add_details_login,
          style: const TextStyle(fontSize: 15.0, color: AppColors.lightBlack),
        ),
      ],
    );
  }
}
