import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class CustomizeOrderItemDetails extends StatelessWidget {
  const CustomizeOrderItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 15.5),
      child: Column(
        children: const [
         Text('Customize your Order',style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: AppColors.loginBlack
          ),),

        ],
      ),
    );
  }
}
