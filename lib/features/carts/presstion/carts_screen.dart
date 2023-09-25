import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';

import '../../../core/config/router/route_names.dart';
import '../../../core/config/widgets/custom_cart_item/custom_cart_item.dart';
import '../../../core/config/widgets/custom_sized_box.dart';
import '../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';
import '../../menu/presstion/controller/menu_provider_screen.dart';
import 'controller/cart_provider.dart';

class CartsScreen extends ConsumerWidget {
  const CartsScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: ref.watchWhen(
        provider: cartProvider,
        data: (data) {
          return SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTopScreen(
                    title: 'Cart Products',
                    enableBack: true,
                  ),
                ),
                Expanded(
                  child: SizedBox(
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
                            highlightColor :Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                context.pushNamed(
                                  RouteNames.itemDetailsScreen,
                                  arguments: data[index],
                                );
                              },
                              child: Consumer(
                                builder: (BuildContext context, WidgetRef ref,
                                    Widget? child) {
                                  final changeFavorite =
                                      ref.watch(menuProviderScreen);
                                  ref.watch(changeFavorite.isLoading.provider);
                                  return CustomCartItem(
                                    //    favoriteFunction: () => changeFavorite.changeFavorite(data[index]),
                                    image: data[index].image,
                                    name: data[index].name,
                                    //isFavorites: data[index].isFavorites,
                                    description: data[index].description,
                                    price: data[index].price,
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
                  ),
                ),
              ],
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
      ),
    );
  }
}
