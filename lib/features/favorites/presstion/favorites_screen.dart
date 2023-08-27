import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/favorites/presstion/widget/favorite_items.dart';
import 'package:shibrawi/features/favorites/presstion/widget/favorites_top.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: FavoritesTop(),
          ),
          Expanded(
            child: FavoriteItem(),
          ),
          Height(65.0)
        ],
      ),
    );
  }
}
