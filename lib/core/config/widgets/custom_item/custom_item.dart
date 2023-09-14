import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';

import '../../../../features/menu/presstion/controller/menu_provider_screen.dart';
import '../../themes/app_colors.dart';
import '../../utils/assets_manager.dart';
import '../custom_sized_box.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    // required this.productModel,
    required this.image,
    required this.name,
    this.isFavorites = true,
    required this.description,
    this.favoriteFunction,
  });

  final String image;
  final String name;
  final String description;
  final bool isFavorites;

  //final ProductModel productModel;
  final Function()? favoriteFunction;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          image,
          fit: BoxFit.cover,
          width: context.width,
          height: 200,
        ),
        Container(
          width: context.width,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0, 0.3],
              colors: [
                Colors.black.withOpacity(0.7799999713897705),
                Colors.transparent
              ],
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 21,
                bottom: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                    maxLines: 1,
                  ),
                  const Height(5.0),
                  Row(
                    children: [
                      Consumer(
                        builder: (BuildContext context, WidgetRef ref,
                            Widget? child) {
                          final changeFavorite = ref.watch(menuProviderScreen);
                          // ref.watch(changeFavorite.isLoading.provider);
                          return InkWell(
                            onTap:
                                //{
                                // changeFavorite.changeFavorite(
                                favoriteFunction
                            //);
                            // }
                            ,
                            child: (isFavorites)
                                ? SvgPicture.asset(
                                    AssetsManger.orangeStar,
                                  )
                                : SvgPicture.asset(
                                    AssetsManger.starWhite,
                                  ),
                          );
                        },
                      ),
                      const Width(5.0),
                      Expanded(
                        child: Text(
                          description,
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          ),
                          maxLines: 1,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
