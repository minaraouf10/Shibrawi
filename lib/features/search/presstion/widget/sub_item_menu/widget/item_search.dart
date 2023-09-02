import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/search/presstion/controller/search_provider_screen.dart';

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
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      context.pushNamed(RouteNames.itemSearchDetailsScreen,
                          arguments: itemSearchProvider.searchData[index]);
                    },
                    child: Stack(
                      children: [
                        Image.network(
                          itemSearchProvider.searchData[index].image,
                          fit: BoxFit.cover,
                          width: context.width,
                          height: 200,
                        ),
                        Container(
                          width: context.width,
                          height: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: const [0, 0.3],
                              colors: [
                                Colors.black.withOpacity(0.7799999713897705),
                                Colors.transparent
                              ],
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.bottomStart,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 21,
                                bottom: 10.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    itemSearchProvider.searchData[index].name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                    ),
                                    maxLines: 1,
                                  ),
                                  const Height(5.0),
                                  Row(
                                    children: [
                                      (itemSearchProvider
                                              .searchData[index].inFavorites)
                                          ? SvgPicture.asset(
                                              AssetsManger.orangeStar)
                                          : SvgPicture.asset(
                                              AssetsManger.starWhite),
                                      const Width(5.0),
                                      Expanded(
                                        child: Text(
                                          itemSearchProvider
                                              .searchData[index].description,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.white,
                                          ),
                                          maxLines: 1,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
          itemCount: itemSearchProvider.searchData.length),
    );
  }
}
