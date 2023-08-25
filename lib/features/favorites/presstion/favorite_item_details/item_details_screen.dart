import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/item_details_body.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/top_screen.dart';

class ItemFavoriteDetailsScreen extends StatelessWidget {
  const ItemFavoriteDetailsScreen(this.itemDetailsData,{Key? key})
      : super(key: key); // Fix the super(key) argument

  final ProductModel itemDetailsData;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:  [
             SizedBox(
              height: 245,
              child: TopScreenItemDetails(itemDetailsData),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225),
              child: ItemDetailsBody(itemDetailsData),
            )
          ],
        ),
      ),
    );
  }
}
