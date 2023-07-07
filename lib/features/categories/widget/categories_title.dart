import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class CategoriesTitle extends StatelessWidget {
  const CategoriesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Menu',
                style: TextStyle(fontSize: 24),
              ),
              const Spacer(),
              SvgPicture.asset('assets/icons/shopping-cart.svg')
            ],
          ),
          const SizedBox(
            height: 23.0,
          ),
          const Text(
            'Delivering to',
            style: TextStyle(fontSize: 11.0, color: AppColors.foreground),
          ),
          const SizedBox(
            height: 5.0,
          ),
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
                  color: AppColors.orange,
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
        ],
      ),
    );
  }
}
