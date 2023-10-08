import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/setting/presstion/setting/setting_screen/widget/setting_item.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            context.pushNamed(RouteNames.paymentScreen);
          },
          child: const SettingItem(
            icon: AssetsManger.payment,
            title: 'Payment Details',
          ),
        ),
        const Height(20.0),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            //context.pushNamed(RouteNames.cartsScreen);
            context.pushNamed(RouteNames.ordersScreen);
          },
          child: const SettingItem(
            icon: AssetsManger.orders,
            title: 'My Orders',
          ),
        ),
        const Height(20.0),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            context.pushNamed(RouteNames.notificationScreen);
          },
          child: const SettingItem(
            icon: AssetsManger.notifications,
            title: 'Notifications',
          ),
        ),
        const Height(20.0),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            context.pushNamed(RouteNames.inboxScreen);
          },
          child: const SettingItem(
            icon: AssetsManger.inboxMail,
            title: 'Inbox',
          ),
        ),
        const Height(20.0),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            context.pushNamed(RouteNames.aboutUsScreen);
          },
          child: const SettingItem(
            icon: AssetsManger.aboutUs,
            title: 'About Us',
          ),
        ),
        // const Height(20.0),
      ],
    );
  }
}
