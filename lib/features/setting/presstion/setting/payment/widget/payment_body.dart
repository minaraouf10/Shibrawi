import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165.0,
          width: context.width,
          decoration: const BoxDecoration(color: Color(0xFFf7f7f7)),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Height(25.0),
                Row(
                  children: [
                    const Text(
                      "Cash/Card on delivery",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.loginBlack,
                        height: 15 / 12,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(AssetsManger.trueIcon)
                  ],
                ),
                const Height(10.0),
                const DefaultDivider(),
                const Height(16.0),
                Row(
                  children: [
                    Image.asset(AssetsManger.visaPng),
                    const Width(20.0),
                    const Text(
                      "**** **** ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                        height: 15 / 12,
                      ),
                    ),
                    const Width(15.0),
                    const Text(
                      " 2187",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                        height: 15 / 12,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 85.0,
                      height: 30.0,
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: AppColors.primary),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Delete Card",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                            height: 13 / 11,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                const Height(15.0),
                const DefaultDivider(),
                const Height(12.0),
                const Text(
                  "Other Methods",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Height(20.0),
      ],
    );
  }
}
