import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';
import 'package:shibrawi/features/favorites/data/model/favorites_model.dart';

class TitlePriceFavoriteItemDetails extends StatelessWidget {
  final Product data;

  const TitlePriceFavoriteItemDetails(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
            color: AppColors.loginBlack,
          ),
        ),
        const Height(7.0),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsManger.starRating),
                const Height(5.0),
                const Text(
                  '4 Star Ratings',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary),
                )
              ],
            ),
            const Spacer(),
            const Text(
              'RS. ',
              style: TextStyle(
                  fontSize: 31.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.loginBlack),
            ),
            Text(
              data.price.toString(),
              style: const TextStyle(
                  fontSize: 31.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.loginBlack),
            ),
          ],
        ),
        const Height(30.0),
        const Text(
          'Description',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack),
        ),
        const Height(15.0),
        Text(
          data.description,
          style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: AppColors.lightBlack),
        ),
        const Height(15.5),
        const DefaultDivider(),
      ],
    );
  }
}
