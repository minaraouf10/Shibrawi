import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_search_bar.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/items.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/sub_item_menu_title.dart';

class SubItemScreen extends StatelessWidget {
  const SubItemScreen(id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SubItemMenuTitle(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MenuSearchBar(),
            ),
            const Expanded(
              child: Items(42),
            ),
          ],
        ),
      ),
    );
  }
}
