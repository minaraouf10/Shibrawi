import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

import '../../../../../features/menu/presstion/controller/menu_provider_screen.dart';

class CustomItemDetailsTitle extends StatelessWidget {
  const CustomItemDetailsTitle({
    required this.favoriteFunction,
    required this.isFavorite,
    super.key,
  });

  final bool isFavorite;
  final Function()? favoriteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColors.white,
                )),
            const Width(20.4),
            const Spacer(),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final menuProvider = ref.watch(menuProviderScreen);
                return InkWell(
                  onTap: favoriteFunction,
                  child: Stack(
                    children: [
                      SvgPicture.asset(AssetsManger.backGroundFavorite),
                      (isFavorite)
                          ? Positioned(
                              top: 15,
                              left: 13,
                              child:
                                  SvgPicture.asset(AssetsManger.favoriteHeart))
                          : Positioned(
                              top: 15,
                              left: 13,
                              child: SvgPicture.asset(
                                AssetsManger.unFavoriteHeart,
                              ),
                            )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
