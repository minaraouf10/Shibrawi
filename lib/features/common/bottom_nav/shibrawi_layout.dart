import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/features/common/controller/shibrawilayout_provider_screen.dart';

class ShibrawiLayout extends ConsumerWidget {
  const ShibrawiLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final layoutProvider = ref.read(shibrawilayoutProviderScreen);

    return Scaffold(body: Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return layoutProvider.screens[layoutProvider.currentIndex.state];
      },
    ), bottomNavigationBar: Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return CurvedNavigationBar(
          index: ref.watch(layoutProvider.currentIndex.provider),
          onTap: (index) {
            layoutProvider.changeBottomNav(index);
          },
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          height: 65,
          items: [
            SvgPicture.asset(
              'assets/icons/menu.svg',
              height: 20,
              width: 20.0,
            ),
            SvgPicture.asset(
              'assets/icons/offers.svg',
              height: 20,
              width: 20.0,
            ),
            SvgPicture.asset(
              'assets/icons/home.svg',
              height: 30,
              width: 30.0,
            ),
            SvgPicture.asset(
              'assets/icons/profile.svg',
              height: 20,
              width: 20.0,
            ),
            SvgPicture.asset(
              'assets/icons/more_icon.svg',
              height: 20,
              width: 20.0,
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
        );
      },
    ));
  }
}
