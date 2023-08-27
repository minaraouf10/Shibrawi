import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/features/Home/data/model/home_model.dart';

class CategoryItem extends StatelessWidget {
  final BannerModel banners;

  const CategoryItem(this.banners, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: NetworkImage(
            banners.image,
          ),
          height: 100.0,
          width: 100.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 15.0,
        ),
        const Text(
          'Banners',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15.0,
            color: AppColors.loginBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
