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
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                  top: 15.0,
                ),
                itemCount: 5,
                itemBuilder: (context, index) =>  Items(44),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
