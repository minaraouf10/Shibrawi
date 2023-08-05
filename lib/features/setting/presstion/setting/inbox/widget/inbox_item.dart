import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Height(14.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AssetsManger.orangePoint),
            const Width(5.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "MealMonkey Promotions",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                    height: 17 / 14,
                  ),
                ),
                Height(8.0),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightBlack,
                    height: 17 / 14,
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "6th July",
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightBlack,
                    height: 11 / 9,
                  ),
                ),
                const Height(35.0),
                SvgPicture.asset(AssetsManger.starWhite)
              ],
            ),
          ],
        ),
        const Height(15.0),
        const DefaultDivider(),
      ],
    );
  }
}
