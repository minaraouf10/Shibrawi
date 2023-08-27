import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';
import 'package:shibrawi/features/setting/data/model/notification/notification_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationData notificationData;
  const NotificationItem(this.notificationData,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AssetsManger.orangePoint),
              const Width(30.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      notificationData.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                        height: 17 / 14,
                      ),
                    ),
                    const Height(10.0),
                    Text(
                      notificationData.message,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightBlack,
                        height: 15 / 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Height(12.0),
                  ],
                ),
              )
            ],
          ),
          const DefaultDivider(),
        ],
      ),
    );
  }
}
