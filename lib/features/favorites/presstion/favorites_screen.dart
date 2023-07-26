import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/favorites/presstion/widget/favorites_top.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/items.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: FavoritesTop(),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 20.0,
               // top: 20.0,
              ),
              itemCount: 2,
              itemBuilder: (context, index) => const Items(),
            ),
          ),
        ],
      ),
    );
  }
}
