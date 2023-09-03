import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/Home/data/model/home_model.dart';

import '../controller/changefavorite_provider_screen.dart';

class RestaurantsItem extends ConsumerWidget {
  final HomeProductModel homeProduct;

  const RestaurantsItem(this.homeProduct, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    final changeFavoriteProvider = ref.watch(changeFavoriteProviderScreen);
    ref.watch(changeFavoriteProvider.isLoading.provider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: NetworkImage(
            homeProduct.image,
          ),
          height: 150.0,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        const Height(20.0),
        Text(
          homeProduct.name,
          style: const TextStyle(
            color: AppColors.loginBlack,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 7.0,
        ),
        Row(
          children: [
            InkWell(
              onTap: () => changeFavoriteProvider.changeFavorite(homeProduct),
              child: (homeProduct.inFavorites)
                  ? SvgPicture.asset(AssetsManger.orangeStar)
                  : SvgPicture.asset(AssetsManger.starWhite),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              '4.9',
              style: TextStyle(
                color: AppColors.primary,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                '(124 ratings) ${homeProduct.description}',
                style: const TextStyle(
                  color: AppColors.foreground,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
