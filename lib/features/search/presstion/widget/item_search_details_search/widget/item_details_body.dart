import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/customize_order_item_details.dart';
import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/number_of_portions.dart';
import 'package:shibrawi/features/search/data/model/search_model.dart';
import 'package:shibrawi/features/search/presstion/widget/item_search_details_search/bottom_sheet_widget/search_total_price.dart';
import 'package:shibrawi/features/search/presstion/widget/item_search_details_search/bottom_sheet_widget/title_price_item_details.dart';

class ItemSearchDetailsBody extends StatelessWidget {
  const ItemSearchDetailsBody(this.data, {super.key});

  final SearchData data;

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
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitlePriceItemSearchDetails(data),
              CustomizeOrderItemDetails(),
              const NumberOfPortions(),
              const Height(25),
              const SearchTotalPrice(),
              const Height(25),
            ],
          ),
        ),
      ),
    );
  }
}
