import 'package:flutter/material.dart';
import 'package:shibrawi/features/Home/widget/category_item.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const CategoryItem(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
