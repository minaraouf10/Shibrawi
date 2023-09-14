import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/features/search/presstion/widget/item_search_details_search/bottom_sheet_widget/search_total_price_item.dart';

class SearchTotalPrice extends StatelessWidget {
  const SearchTotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: 90,
          decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(30),
              bottomEnd: Radius.circular(30.0),
            ),
            color: AppColors.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 40.0, end: 20.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  //context.pushNamed(RouteNames.subItemScreen);
                },
                child: const SearchTotalPriceItem(),
              ),
              // const Height(20.0),
            ],
          ),
        )
      ],
    );
  }
}
