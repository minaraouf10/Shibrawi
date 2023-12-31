import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/features/common/controller/shibrawilayout_provider_screen.dart';

class ShibrawiLayout extends ConsumerWidget {
  const ShibrawiLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final layoutProvider = ref.read(shibrawilayoutProviderScreen);
    final curr = ref.watch(layoutProvider.currentIndex.provider);
    const colorIcon = ColorFilter.mode(
      AppColors.primary,
      BlendMode.srcIn,
    );
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            left: 0,
            child: layoutProvider.screens[curr],
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: CurvedNavigationBar(
              index: curr,
              onTap: (index) {
                layoutProvider.changeBottomNav(index);
              },
              backgroundColor: AppColors.primary,
              //Colors.transparent,
              animationDuration: const Duration(milliseconds: 300),
              height: 65,
              items: [
                SvgPicture.asset(
                  AssetsManger.menu,
                  height: 20,
                  width: 20.0,
                  colorFilter: curr == 0 ? colorIcon : null,
                ),
                SvgPicture.asset(
                  AssetsManger.favoriteIcon,
                  height: 20,
                  width: 20.0,
                  colorFilter: curr == 1 ? colorIcon : null,
                ),
                SvgPicture.asset(
                  AssetsManger.home,
                  height: 30,
                  width: 30.0,
                  colorFilter: curr == 2 ? colorIcon : null,
                ),
                SvgPicture.asset(
                  AssetsManger.profile,
                  height: 20,
                  width: 20.0,
                  colorFilter: curr == 3 ? colorIcon : null,
                ),
                SvgPicture.asset(
                  AssetsManger.moreIcon,
                  height: 20,
                  width: 20.0,
                  colorFilter: curr == 4 ? colorIcon : null,
                ),
              ],
              color: Colors.white,
              buttonBackgroundColor: Colors.white,
              animationCurve: Curves.easeInOut,
            ),
          ),
        ],
      ),
    );
  }
}
