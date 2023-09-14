import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';
import 'package:shibrawi/features/menu/presstion/controller/product_provider.dart';

import '../../../../../core/config/widgets/custom_item/custom_item.dart';
import '../../controller/menu_provider_screen.dart';

class Items extends ConsumerWidget {
  const Items(this.categoryId, {super.key});

  final int categoryId;

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider: productProvider(categoryId),
      data: (data) {
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
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      context.pushNamed(RouteNames.itemDetailsScreen,
                          arguments: data[index]);
                    },
                    child: Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        final changeFavorite = ref.watch(menuProviderScreen);
                        ref.watch(changeFavorite.isLoading.provider);
                        return CustomItem(
                          favoriteFunction: () {
                            changeFavorite.changeFavorite(data[index]);
                          },
                          //productModel: data[index],
                          image: data[index].image,
                          name: data[index].name,
                          isFavorites: data[index].isFavorites,
                          description: data[index].description,
                        );
                      },
                    ),
                  ),
                  const Height(8.0)
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Height(20.0);
            },
            itemCount: data.length,
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Builder(builder: (context) {
            log(error.toString(), stackTrace: stackTrace);
            return Text(
              error.toString(),
            );
          }),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
