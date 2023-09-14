import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';
import 'package:shibrawi/features/favorites/presstion/controller/favorite_provider.dart';

import '../../../../core/config/widgets/custom_item/custom_item.dart';

class FavoriteItem extends ConsumerWidget {
  const FavoriteItem({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider: favoriteProvider,
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
                        context.pushNamed(
                          RouteNames.favoriteItemDetailsScreen,
                          arguments: data[index],
                        );
                      },
                      child: CustomItem(
                        name: data[index].name,
                        image: data[index].image,
                        description: data[index].description,
                        favoriteFunction: () => data[index],
                      )),
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
