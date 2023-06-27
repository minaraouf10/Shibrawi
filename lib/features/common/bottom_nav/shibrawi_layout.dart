import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class ShibrawiLayout extends StatelessWidget {
  const ShibrawiLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.orange,
        animationDuration:const Duration(milliseconds: 300),
        height: 75,
        items: [
          SvgPicture.asset('assets/icons/menu.svg',),
          SvgPicture.asset('assets/icons/offers.svg'),
          SvgPicture.asset('assets/icons/home.svg'),
          SvgPicture.asset('assets/icons/profile.svg'),
          SvgPicture.asset('assets/icons/more_icon.svg'),
        ],),
    );
  }
}
