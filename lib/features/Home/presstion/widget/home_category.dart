import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/Home/presstion/controller/home_banner_provider.dart';
import 'package:shibrawi/features/Home/presstion/widget/category_item.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';

class HomeCategory extends ConsumerWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider: homeBannerProvider,
      data: (data) {
        return SizedBox(
          height: 135.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => CategoryItem(data[index]),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: data.length,
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(error.toString()),
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
