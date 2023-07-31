import 'package:flutter/material.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/widget/notification_item.dart';
import 'package:shibrawi/features/setting/presstion/setting/notification/widget/notification_top.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const NotificationTop(),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context,index) => const NotificationItem(),
                  itemCount: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
