import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/item_details_screen_title.dart';
import 'package:shibrawi/features/search/data/model/search_model.dart';

class TopScreenItemSearchDetails extends StatelessWidget {
  const TopScreenItemSearchDetails(this.data, {super.key});

  final SearchData data;

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
