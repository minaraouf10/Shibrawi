import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/controller/notification_provider.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/widget/notification_item.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/widget/notification_top.dart';

import '../../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
        provider: notificationProvider,
        data: (data) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const CustomTopScreen(title: 'Notifications',enableBack: true,),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            NotificationItem(data.notification[index]),
                        itemCount: data.notification.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
