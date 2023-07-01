import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/features/Home/widget/restaurants_item.dart';

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
              color: AppColors.orange,
              fontWeight: FontWeight.w400,
              function: () {},
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Container(
          height: 350,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index)=> const RestaurantsItem(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10.0,
            ),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
