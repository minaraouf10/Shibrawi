import 'package:flutter/material.dart';
import 'package:shibrawi/features/setting/presstion/setting/AboutUs/widget/about_us_body.dart';

import '../../../../../core/config/widgets/custom_sized_box.dart';
import '../../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: const [
              CustomTopScreen(title: 'About Us',enableBack: true,),
              Height(25.0),
              AboutUsBody(),
            ],
          ),
        ),
      ),
    );
  }
}
