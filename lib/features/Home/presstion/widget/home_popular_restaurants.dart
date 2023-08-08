import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/features/Home/presstion/widget/restaurants_item.dart';

class HomePopularRestaurants extends StatelessWidget {
  const HomePopularRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Popular Restaurants',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: AppColors.loginBlack,
              ),
            ),
            const Spacer(),
            DefaultTextButton(
              text: 'View all',
              fontSize: 13.0,
              color: AppColors.primary,
              fontWeight: FontWeight.w400,
              function: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ...List.generate(
          4,
          (index) => Column(
            children: [
              const RestaurantsItem(),
              if (index != 3) const Height(20),
            ],
          ),
        ),
      ],
    );
  }
}
