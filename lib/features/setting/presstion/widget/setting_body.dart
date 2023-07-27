import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/setting/presstion/widget/setting_item.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SettingItem(
          icon: 'assets/icons/payment.svg',
          title: 'Payment Details',
        ),
        Height(20.0),
        SettingItem(
          icon: 'assets/icons/orders.svg',
          title: 'My Orders',
        ),
        Height(20.0),
        SettingItem(
          icon: 'assets/icons/notifications.svg',
          title: 'Notifications',
        ),
        Height(20.0),
        SettingItem(
          icon: 'assets/icons/inbox-mail.svg',
          title: 'Inbox',
        ),
        Height(20.0),
        SettingItem(
          icon: 'assets/icons/aboutUs.svg',
          title: 'About Us',
        ),
        Height(20.0),
      ],
    );
  }
}
