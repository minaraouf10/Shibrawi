import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/item_details_screen_title.dart';

class TopScreenItemDetails extends StatelessWidget {
 const TopScreenItemDetails(this.data,{super.key});

  final ProductModel data;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          data.image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0, 0.3],
                  colors: [
                    Colors.black.withOpacity(0.7799999713897705),
                    Colors.transparent
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ItemDetailsScreenTitle(),
            ),
          ],
        )
      ],
    );
  }
}
