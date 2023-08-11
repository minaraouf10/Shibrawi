import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';
import 'package:shibrawi/features/menu/presstion/controller/product_provider.dart';

class Items extends ConsumerWidget {

  const Items(int id,{super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider: productProvider,
      data: (data) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    context.pushNamed(
                      RouteNames.itemDetailsScreen,
                    );
                  },
                  child: Stack(
                    children: [
                      Image.network(
                        data[index].image,
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
                                  data[index].name,
                                  style:const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white,
                                  ),
                                ),
                                const Height(5.0),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(AssetsManger.orangeStar),
                                      const Width(5.0),
                                       Text(
                                       data[index].name ,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.white,
                                        ),
                                         maxLines: 1,
                                      )
                                    ],
                                  ),
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
          },
          separatorBuilder: (context, index) {
            return const Height(20.0);
          },
          itemCount: data.length,
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Builder(
            builder: (context) {
              log( error.toString(),name: 'mina');
              return Text(error.toString(),);
            }
          ),
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
