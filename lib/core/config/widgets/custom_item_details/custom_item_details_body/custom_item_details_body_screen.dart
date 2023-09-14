import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/widgets/custom_item_details/custom_item_details_body/widget/custom_number_of_portions.dart';
import 'package:shibrawi/core/config/widgets/custom_item_details/custom_item_details_body/widget/custom_title_price_item_details.dart';
import 'package:shibrawi/core/config/widgets/custom_item_details/custom_item_details_body/widget/custom_total_price.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

import '../../../../../features/menu/presstion/item_details/bottom_sheet_widget/customize_order_item_details.dart';
import '../../../themes/app_colors.dart';
import '../../custom_sized_box.dart';

class CustomItemDetailsBody extends StatelessWidget {
  const CustomItemDetailsBody(this.data, {super.key});

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitlePriceItemDetails(data),
              CustomizeOrderItemDetails(),
              const CustomNumberOfPortions(),
              const Height(25),
              CustomTotalPrice(data),
              const Height(25),
            ],
          ),
        ),
      ),
    );
  }
}
