import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import 'custom_top_screen/custom_top_screen.dart';

class CustomNotificationScreen extends StatelessWidget {
  const CustomNotificationScreen(
      {required this.title, required this.body, super.key});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTopScreen(
                title: title,
                enableBack: true,
                enableCart: false,
              ),
              // Text(title),
              const Height(10.0),
              Text(body),
            ],
          ),
        ),
      ),
    );
  }
}
