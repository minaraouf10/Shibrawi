import 'package:flutter/material.dart';
import 'package:shibrawi/features/favorites/data/model/favorites_model.dart';
import 'package:shibrawi/features/favorites/presstion/favorite_item_details/widget/favorite_item_details_body.dart';
import 'package:shibrawi/features/favorites/presstion/favorite_item_details/widget/favorite_top_screen.dart';

class FavoriteItemDetailsScreen extends StatelessWidget {
  const FavoriteItemDetailsScreen(this.itemDetailsData,{Key? key})
      : super(key: key); // Fix the super(key) argument

  final Product itemDetailsData;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:  [
            SizedBox(
              height: 245,
              child: TopScreenItemFavoriteDetails(itemDetailsData),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225),
              child: FavoriteItemDetailsBody(itemDetailsData),
            )
          ],
        ),
      ),
    );
  }
}
