import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/features/Home/widget/home_category.dart';
import 'package:shibrawi/features/Home/widget/home_popular_restaurants.dart';
import 'package:shibrawi/features/Home/widget/home_search_bar.dart';
import 'package:shibrawi/features/Home/widget/home_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Positioned(
          left: 0.0,
          right: 0.0,
          bottom: 0.0,
          top: 0.0,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Column(
                children: [
                  const HomeTitle(),
                  HomeSearchBar(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const HomeCategory(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const HomePopularRestaurants(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: CurvedNavigationBar(
              index: 2,
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
            ))
      ]),
    );
  }
}
