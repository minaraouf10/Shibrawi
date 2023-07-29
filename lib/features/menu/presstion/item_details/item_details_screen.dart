import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/item_details_body.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/top_screen.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key})
      : super(key: key); // Fix the super(key) argument

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            SizedBox(
              height: 245,
                child: TopScreenItemDetails(),),
            Padding(
              padding: EdgeInsets.only(top: 225),
              child: ItemDetailsBody(),
            )
          ],
        ),
      ),
    );
  }
}
