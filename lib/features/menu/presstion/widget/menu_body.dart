import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(30),
                      bottomEnd: Radius.circular(30.0)),
                  color: AppColors.orange),
            ),
          ],
        )
      ],
    );
  }
}
