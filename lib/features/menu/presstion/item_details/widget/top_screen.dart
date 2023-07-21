import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/presstion/item_details/widget/item_details_screen_title.dart';

class TopScreenItemDetails extends StatelessWidget {
  const TopScreenItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://media.istockphoto.com/id/109723209/photo/caviar-on-quail-egg-and-avocado-mousse.jpg?s=612x612&w=0&k=20&c=KbUQGBuVMy6gwFmRp4CLvHTSVWUAx0-8gm-YqPQ4zWE=',
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
