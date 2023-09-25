import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/favorites/presstion/widget/favorite_items.dart';

import '../../../core/config/themes/app_colors.dart';
import '../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTopScreen(title: 'Latest Offers'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Find discounts, Offers special',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: AppColors.lightBlack,
              ),
            ),
          ),
          const Height(18.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 30.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Check Offers',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: FavoriteItem(),
          ),
          const Height(65.0)
        ],
      ),
    );
  }
}
