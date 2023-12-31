import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/features/Home/presstion/widget/restaurants_item.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';

import '../controller/home_product_provider.dart';

class HomePopularProducts extends ConsumerWidget {
  const HomePopularProducts({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
        provider: homeProductProvider,
        data: (data) {
          return Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                  ),
                  const Spacer(),
                  DefaultTextButton(
                    text: 'View all',
                    fontSize: 13.0,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w400,
                    function: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ...List.generate(
                data.length,
                (index) => Column(
                  children: [
                    RestaurantsItem(data[index]),
                    //  if (index != 3) const Height(20),
                  ],
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          log(error.toString(), stackTrace: stackTrace);
          return Text(error.toString());
        },
        loading: () {
          return Container();
        });
  }
}
