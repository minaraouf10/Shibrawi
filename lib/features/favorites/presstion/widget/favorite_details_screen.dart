import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

import '../../../../core/config/widgets/custom_item_details/custom_item_details_body/custom_item_details_body_screen.dart';
import '../../../../core/config/widgets/custom_item_details/custom_item_details_top/custom_top_item_details.dart';

class FavoriteItemDetailsScreen extends StatelessWidget {
  const FavoriteItemDetailsScreen(this.itemDetailsData, {Key? key})
      : super(key: key);

  final ProductModel itemDetailsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 245,
              child: CustomTopItemDetails(itemDetailsData),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225),
              child: CustomItemDetailsBody(itemDetailsData),
            )
          ],
        ),
      ),
    );
  }
}
