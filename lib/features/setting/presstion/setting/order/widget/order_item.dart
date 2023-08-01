import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:  [
        SizedBox(
            width: 90,
            height: 90.0,
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuiUueP0D3BaOjGbnCKffAnAhx4vinElH0vw&usqp=CAU',
            fit: BoxFit.cover,
            ),
        ),
        const Width(10.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              "King Burgers",
              style:  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.loginBlack,
                height: 19/16,
              ),
            ),
            const Height(8.0),
            Row(
              children: [
                SvgPicture.asset('assets/icons/orange-star.svg'),
                const Width(5.0),
                const Text(
                  "4.9",
                  style:  TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                    height: 13/11,
                  ),
                ),
                const Width(5.0),
                const Text(
                  "(124 ratings)",
                  style:  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightBlack,
                    height: 15/12,
                  ),
                )
              ],
            ),
            const Height(8.0),
            const Text(
              "Burger estern Food",
              style:  TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.lightBlack,
                height: 15/12,
              ),
            ),
            const Height(8.0),
            Row(
              children: [
                SvgPicture.asset('assets/icons/location-pin.svg'),
                const Width(5.0),
                const Text(
                  "No 03, 4th Lane, Newyork",
                  style:  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                   color: AppColors.lightBlack,
                    height: 15/12,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
