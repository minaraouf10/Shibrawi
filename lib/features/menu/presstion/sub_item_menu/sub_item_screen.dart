import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/data/model/category_model.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_search_bar.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/items.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/sub_item_menu_title.dart';

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
              child: SubItemMenuTitle(categoryData.name),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MenuSearchBar(),
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
