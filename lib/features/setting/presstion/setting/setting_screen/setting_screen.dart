import 'package:flutter/material.dart';
import 'package:shibrawi/features/setting/presstion/setting/setting_screen/widget/setting_body.dart';
import 'package:shibrawi/features/setting/presstion/setting/setting_screen/widget/setting_top.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: const [
            SettingTop(),
            SettingBody(),
          ],
        ),
      ),
    );
  }
}
