import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';
import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/customize_order_item_details.dart';
import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/number_of_portions.dart';
import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/title_price_item_details.dart';
import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/total_price.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody(this.data, {super.key});

  final ProductModel data;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitlePriceItemDetails(data),
            CustomizeOrderItemDetails(),
            const NumberOfPortions(),
            const Height(25),
            const TotalPrice(),
            const Height(25),
          ],
        ),
      ),
    );
  }
}