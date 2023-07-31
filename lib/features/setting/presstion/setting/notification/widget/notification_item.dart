import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: 55,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/orange_point.svg'),
                const Width(30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Your orders has been picked up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                        height: 17/14,
                      ),
                    ),
                    Height(10.0),
                    Text(
                      "Now",
                      style:  TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightBlack,
                        height: 15/12,
                      ),
                    ),
                    Height(12.0),
                  ],
                )
              ],
            ),
            const DefaultDivider(),
          ],
        ),
      ),
    );
  }
}
