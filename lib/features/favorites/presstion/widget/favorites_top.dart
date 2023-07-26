import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class FavoritesTop extends StatelessWidget {
  const FavoritesTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Latest Offers',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset('assets/icons/shopping-cart.svg'),
              ],
            ),
            const Height(18.0),
            const Text(
              'Find discounts, Offers special',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: AppColors.lightBlack,
              ),
            ),
            const Height(30.0),
            Container(
              height: 30.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text('Check Offers',style: TextStyle(
                  color: AppColors.white,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w400,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
