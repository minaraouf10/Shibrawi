import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/controller/notification_provider.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/widget/notification_item.dart';

import '../../../../../core/config/widgets/custom_notification_screen.dart';
import '../../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';
import '../../../../../core/config/widgets/primary_widget/default_divider.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: ref.watchWhen(
        provider: notificationProvider,
        data: (data) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const CustomTopScreen(
                    title: 'Notifications',
                    enableBack: true,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CustomNotificationScreen(
                              title: data.notification[index].title,
                              body: data.notification[index].message,
                            ),
                          ),
                        ),
                        child: NotificationItem(data.notification[index]),
                      ),
                      itemCount: data.notification.length,
                      separatorBuilder: (context, index) =>
                          const DefaultDivider(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
