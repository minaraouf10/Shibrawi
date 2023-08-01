import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

class IngredientsOrder extends StatelessWidget {
  const IngredientsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.0,
      width: context.width,
      decoration: const BoxDecoration(
        color: Color(0xffF6F6F6)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Beef Burger x1",
                  style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                ),
                Spacer(),
                Text(
                  "\$16",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                )
              ],
            ),
            const Height(16.0),
            const DefaultDivider(),
            const Height(13.0),
            Row(
              children: const [
                Text(
                  "Classic Burger x1",
                  style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                ),
                Spacer(),
                Text(
                  "\$14",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                )
              ],
            ),
            const Height(16.0),
            const DefaultDivider(),
            const Height(13.0),

            Row(
              children: const [
                Text(
                  "Cheese Chicken Burger x1",
                  style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                ),
                Spacer(),
                Text(
                  "\$17",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                )
              ],
            ),
            const Height(16.0),
            const DefaultDivider(),
            const Height(13.0),

            Row(
              children: const [
                Text(
                  "Chicken Legs Basket x1",
                  style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                ),
                Spacer(),
                Text(
                  "\$15",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                )
              ],
            ),
            const Height(16.0),
            const DefaultDivider(),
            const Height(13.0),
            Row(
              children: const [
                Text(
                  "French Fries Large x1",
                  style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                ),
                Spacer(),
                Text(
                  "\$6",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16/13,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
