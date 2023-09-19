import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_body.dart';

import '../../../../core/config/widgets/custom_search_bar/custom_search_bar.dart';
import '../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTopScreen(title: 'Menu'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomSearchBar(),
                ),
                Height(25.0),
                MenuBody(),
                Height(75.0)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
