import 'package:flutter/material.dart';
import 'package:shibrawi/features/search/data/model/search_model.dart';
import 'package:shibrawi/features/search/presstion/widget/item_search_details_search/widget/item_details_body.dart';
import 'package:shibrawi/features/search/presstion/widget/item_search_details_search/widget/top_screen.dart';

class ItemSearchDetailsScreen extends StatelessWidget {
  const ItemSearchDetailsScreen(this.itemDetailsData, {Key? key})
      : super(key: key); // Fix the super(key) argument

  final SearchData itemDetailsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 245,
              child: TopScreenItemSearchDetails(itemDetailsData),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225),
              child: ItemSearchDetailsBody(itemDetailsData),
            )
          ],
        ),
      ),
    );
  }
}
