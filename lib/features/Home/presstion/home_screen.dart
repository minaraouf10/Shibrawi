import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/Home/presstion/widget/home_category.dart';
import 'package:shibrawi/features/Home/presstion/widget/home_popular_product.dart';
import 'package:shibrawi/features/Home/presstion/widget/home_search_bar.dart';

import '../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTopScreen(
              title: 'Good morning Akila!',
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    HomeSearchBar(),
                    const Height(30.0),
                    const HomeCategory(),
                    const Height(30.0),
                    const HomePopularProducts(),
                    const Height(100.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
