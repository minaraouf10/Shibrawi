import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/widgets/custom_item_details/custom_item_details_top/custom_item_details_title.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

import '../../../../../features/menu/presstion/controller/menu_provider_screen.dart';

class CustomTopItemDetails extends StatelessWidget {
  const CustomTopItemDetails(this.data, {super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final changeFavorite = ref.watch(menuProviderScreen);
                  ref.watch(changeFavorite.isLoading.provider);
                  return CustomItemDetailsTitle(
                    favoriteFunction: () => changeFavorite.changeFavorite(data),
                    isFavorite: data.isFavorites,
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
