import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/widgets/custom_item/custom_item.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/search/presstion/controller/search_provider_screen.dart';
import '../../../menu/presstion/controller/menu_provider_screen.dart';

class ItemsSearch extends ConsumerWidget {
  const ItemsSearch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final itemSearchProvider = ref.read(searchProviderScreen);
    ref.watch(itemSearchProvider.isLoading.provider);
    return SizedBox(
      height: 500.0,
      child: ListView.separated(
        padding: const EdgeInsetsDirectional.only(
          start: 20.0,
          end: 20.0,
          top: 15.0,
        ),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          if (index >= 0 && index < (itemSearchProvider.searchData.length)) {
            final changeFavorite = ref.watch(menuProviderScreen);
            ref.watch(changeFavorite.isLoading.provider);
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    context.pushNamed(RouteNames.itemDetailsScreen,
                        arguments: itemSearchProvider.searchData[index]);
                  },
                  child: CustomItem(
                    image: itemSearchProvider.searchData[index].image,
                    name: itemSearchProvider.searchData[index].name,
                    description:
                        itemSearchProvider.searchData[index].description,
                    isFavorites:
                        itemSearchProvider.searchData[index].isFavorites,
                    favoriteFunction: () => changeFavorite.changeFavorite(
                      itemSearchProvider.searchData[index],
                    ),
                  ),
                ),
                const Height(8.0)
              ],
            );
          } else {
            log('no data', name: 'item');
            return Container();
          }
        },
        separatorBuilder: (context, index) {
          return const Height(20.0);
        },
        itemCount: itemSearchProvider.searchData.length,
      ),
    );
  }
}
