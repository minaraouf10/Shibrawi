import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';

class TitlePriceItemDetails extends StatelessWidget {
  const TitlePriceItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tandoori Chicken Pizza',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
            color: AppColors.loginBlack,
          ),
        ),
        const Height(7.0),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/icons/Star_rating.svg'),
                const Height(5.0),
                const Text(
                  '4 Star Ratings',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary),
                )
              ],
            ),
            const Spacer(),
            const Text(
              'RS. ',
              style: TextStyle(
                  fontSize: 31.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.loginBlack),
            ),
            const Text(
              '750',
              style: TextStyle(
                  fontSize: 31.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.loginBlack),
            ),
          ],
        ),
        const Height(30.0),
        const Text(
          'Description',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack),
        ),
        const Height(15.0),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: AppColors.lightBlack),
        ),
        const Text(
          'Ornare leo non mollis id cursus. Eu euismod faucibus in leo ',
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: AppColors.lightBlack),
        ),
        const Height(15.5),
        const DefaultDivider(),
      ],
    );
  }
}
