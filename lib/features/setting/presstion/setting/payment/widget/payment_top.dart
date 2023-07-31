import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

class PaymentTop extends StatelessWidget {
  const PaymentTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsetsDirectional.only(top: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Icon(Icons.arrow_back_ios_new_outlined)),
              const Width(20.4),
              const Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginBlack,
                  height: 29/24,
                ),
              ),
              const Spacer(),
              SvgPicture.asset('assets/icons/shopping-cart.svg')
            ],
          ),
          const Height(30.0),
          const Text(
            "Customize your payment method",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack,
              height: 19/16,
            ),
            textAlign: TextAlign.left,
          ),
          const Height(15),
          const DefaultDivider(),
        ],
      ),
    );
  }
}