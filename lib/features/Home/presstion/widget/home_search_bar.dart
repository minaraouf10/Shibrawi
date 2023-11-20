import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import '../../../../core/config/widgets/custom_search_bar/custom_search_bar.dart';

class HomeSearchBar extends StatelessWidget {
  HomeSearchBar({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivering to',
          style: TextStyle(fontSize: 11.0, color: AppColors.foreground),
        ),
        const Height(5.0),
        DropdownButtonHideUnderline(
          child: DropdownButton(
              value: 'Current Location',
              style: const TextStyle(
                color: AppColors.lightBlack,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.primary,
              ),
              items: const [
                DropdownMenuItem(
                  value: 'mina',
                  child: Text('mina'),
                ),
                DropdownMenuItem(
                  value: 'Current Location',
                  child: Text('Current Location       '),
                ),
              ],
              onChanged: (value) {
                value = 'Current Location';
              }),
        ),
        const CustomSearchBar(),
      ],
    );
  }
}
