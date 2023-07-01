import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/features/Home/home_screen.dart';

class ShibrawiLayout extends StatelessWidget {
  const ShibrawiLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen(),

    );
  }
}