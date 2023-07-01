import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class RestaurantsItem extends StatelessWidget {
  const RestaurantsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const NetworkImage(
              'https://www.attractionsinsrilanka.com/wp-content/uploads/2019/07/A-Minute-by-Tuk-Tuk.jpg'),
          height: 150.0,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Minute by tuk tuk',
          style: TextStyle(
            color: AppColors.loginBlack,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 7.0,
        ),
        Row(
          children: [
            Image.asset('assets/icons/star.png'),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              '4.9',
              style: TextStyle(
                color: AppColors.orange,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              '(124 ratings) Café estern Food',
              style: TextStyle(
                color: Color(0xFFFB6B7B7),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
