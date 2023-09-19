import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../core/config/router/route_names.dart';
import '../../../../core/config/widgets/custom_item/custom_item.dart';
import '../../../menu/data/model/product_model.dart';
import '../controller/change_favorite_provider_screen.dart';

class RestaurantsItem extends ConsumerWidget {
  final ProductModel homeProduct;

  const RestaurantsItem(this.homeProduct, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    final changeFavoriteProvider = ref.watch(changeFavoriteProviderScreen);
    ref.watch(changeFavoriteProvider.isLoading.provider);
    return InkWell(
      onTap: () {
        context.pushNamed(
          RouteNames.itemDetailsScreen,
          arguments: homeProduct,
        );
      },
      child: Column(
        children: [
          CustomItem(
            name: homeProduct.name,
            image: homeProduct.image,
            description: homeProduct.description,
            isFavorites: homeProduct.isFavorites,
            favoriteFunction: () =>
                changeFavoriteProvider.changeFavorite(homeProduct),
          ),
          const Height(10.0)
        ],
      ),
    );
  }
}
