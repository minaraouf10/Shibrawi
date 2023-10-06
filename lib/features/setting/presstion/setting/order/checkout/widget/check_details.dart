import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../../../../core/config/themes/app_colors.dart';
import '../../../../../../../core/config/widgets/primary_widget/default_divider.dart';

class CheckDetails extends StatelessWidget {
  const CheckDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "Sub Total",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "\$68",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(12.0),
              Row(
                children: const [
                  Text(
                    "Delivery Cost",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "\$2",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(12.0),
              Row(
                children: const [
                  Text(
                    "Discount",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "-\$4",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(15),
              const DefaultDivider(),
              const Height(15.0),
              Row(
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "\$66",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(15.0),
            ],
          ),
        ),
        const DefaultDivider(
          height: 12.0,
        ),
        const Height(20.0),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            // context.pushNamed(RouteNames.checkoutScreen);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 55.0,
              width: context.width,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(30.0)),
              alignment: AlignmentDirectional.center,
              child: const Text(
                "Send Order",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                  height: 19 / 16,
                ),
              ),
            ),
          ),
        ),
        const Height(20.0),
      ],
    );
  }
}
