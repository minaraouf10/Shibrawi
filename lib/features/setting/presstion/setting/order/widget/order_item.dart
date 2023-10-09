import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../../menu/data/model/product_model.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(this.itemDetailsData, {super.key});

  final ProductModel itemDetailsData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          height: 120.0,
          child: Image.network(
            itemDetailsData.image,
            //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuiUueP0D3BaOjGbnCKffAnAhx4vinElH0vw&usqp=CAU',
            fit: BoxFit.cover,
          ),
        ),
        const Width(10.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemDetailsData.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.loginBlack,
                  height: 19 / 16,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const Height(8.0),
              Row(
                children: [
                  SvgPicture.asset(AssetsManger.orangeStar),
                  const Width(5.0),
                  const Text(
                    "4.9",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                      height: 13 / 11,
                    ),
                  ),
                  const Width(5.0),
                  const Text(
                    "(124 ratings)",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightBlack,
                      height: 15 / 12,
                    ),
                  )
                ],
              ),
              const Height(8.0),
              Text(
                itemDetailsData.description,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightBlack,
                  height: 15 / 12,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
              const Height(8.0),
              Row(
                children: [
                  SvgPicture.asset(AssetsManger.locationPin),
                  const Width(5.0),
                  const Text(
                    "No 03, 4th Lane, Newyork",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightBlack,
                      height: 15 / 12,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
