import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

import '../../../../../menu/data/model/product_model.dart';

class CheckDetailsOrder extends StatelessWidget {
  const CheckDetailsOrder(this.itemDetailsData,{super.key});
  final ProductModel itemDetailsData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "Delivery Instrusctions",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.loginBlack,
                height: 16 / 13,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.add,
              color: AppColors.primary,
              size: 20.0,
            ),
            const Width(10.0),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {},
              child: const Text(
                "Add Notes",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                  height: 16 / 13,
                ),
              ),
            )
          ],
        ),
        const Height(15.0),
        const DefaultDivider(),
        const Height(15.0),
        Column(
          children: [
            Row(
              children:  [
                const Text(
                  "Sub Total",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16 / 13,
                  ),
                ),
                const Spacer(),
                Text(
                  "\$ ${itemDetailsData.price}",
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                    height: 16 / 13,
                  ),
                )
              ],
            ),
            const Height(15.0),
            Row(
              children: const [
                Text(
                  "Delivery Cost",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 16 / 13,
                  ),
                ),
                Spacer(),
                Text(
                  "\$ 2.0",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                    height: 16 / 13,
                  ),
                )
              ],
            ),
            const Height(18.0),
          ],
        ),
        const DefaultDivider(),
        const Height(12.0),
        Row(
          children:  [
            const Text(
              "Total",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.loginBlack,
                height: 16 / 13,
              ),
            ),
            const Spacer(),
            Text(
              "\$ ${itemDetailsData.price + 2}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            )
          ],
        ),
        const Height(65.0),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            context.pushNamed(RouteNames.checkoutScreen);
          },
          child: Container(
            height: 55.0,
            width: context.width,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30.0)),
            alignment: AlignmentDirectional.center,
            child: const Text(
              "Checkout",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
                height: 19 / 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
