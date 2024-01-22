import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';


class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsManger.paymentDone),
          const Height(30.0),
          const Text(
            "Thank You!",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack,
            ),
            textAlign: TextAlign.left,
          ),
          const Height(5.0),
          const Text(
            "for your order",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack,
            ),
            textAlign: TextAlign.left,
          ),
          const Height(10.0),
          const Text(
            "Your Order is now being processed. We will let you ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.loginBlack,
            ),
            textAlign: TextAlign.left,
          ),
          const Height(5.0),
          const Text(
            "know once the order is picked from the outlet. Check ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.loginBlack,
            ),
            textAlign: TextAlign.center,
          ),
          const Height(30.0),
          Container(
            width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  "Track My Order",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
          const Height(5.0),
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text(
                    "Back To Home",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          const Height(20.0),
        ],
      ),
    );
  }
}
