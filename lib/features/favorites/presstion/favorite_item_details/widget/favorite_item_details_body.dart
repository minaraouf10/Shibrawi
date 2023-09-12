import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/favorites/data/model/favorites_model.dart';
import 'package:shibrawi/features/favorites/presstion/favorite_item_details/bottom_sheet_widget/customize_order_item_details.dart';
import 'package:shibrawi/features/favorites/presstion/favorite_item_details/bottom_sheet_widget/favorit_total_price.dart';
import 'package:shibrawi/features/favorites/presstion/favorite_item_details/bottom_sheet_widget/number_of_portions.dart';
import 'package:shibrawi/features/favorites/presstion/favorite_item_details/bottom_sheet_widget/title_price_item_details.dart';

class FavoriteItemDetailsBody extends StatelessWidget {
  const FavoriteItemDetailsBody(this.data, {super.key});

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 4.0,
            spreadRadius: 10.0,
          ),
        ],
        borderRadius: const BorderRadiusDirectional.only(
          topEnd: Radius.circular(30),
          topStart: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsetsDirectional.only(top: 30, start: 20, end: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitlePriceFavoriteItemDetails(data),
              CustomizeOrderFavoriteItemDetails(),
              const NumberOfPortionsFavorite(),
              const Height(25),
               FavoriteTotalPrice(data),
              const Height(25),
            ],
          ),
        ),
      ),
    );
  }
}
