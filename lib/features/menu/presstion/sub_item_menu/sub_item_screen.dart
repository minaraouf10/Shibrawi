import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/data/model/category_model.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/items.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/sub_item_menu_title.dart';

import '../../../../core/config/widgets/custom_search_bar/custom_search_bar.dart';
import '../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class SubItemScreen extends StatelessWidget {
  final CategoryModel categoryData;

  const SubItemScreen(this.categoryData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTopScreen(title: categoryData.name,enableBack: true,),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomSearchBar(),
            ),
            Expanded(
              child: Items(categoryData.id),
            ),
          ],
        ),
      ),
    );
  }
}
