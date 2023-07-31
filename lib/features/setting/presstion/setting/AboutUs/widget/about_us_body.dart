import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/orange_point.svg'),
            const Width(10.0),
            const Expanded(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et '
                'dolore magna aliqua. Ut enim ad minim veniam, '
                'quis nostrud exercitation ullamco laboris nisi ut '
                'aliquip ex ea commodo consequat. Duis aute irure '
                'dolor in reprehenderit in voluptate velit esse cillum '
                'dolore eu fugiat nulla pariatur. Excepteur sint '
                'occaecat cupidatat non proident, sunt in culpa qui '
                'officia deserunt mollit anim id est laborum. ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginBlack,
                  height: 17 / 14,
                ),
              ),
            ),
          ],
        ),
        const Height(30.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/orange_point.svg'),
            const Width(10.0),
            const Expanded(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et '
                'dolore magna aliqua. Ut enim ad minim veniam, '
                'quis nostrud exercitation ullamco laboris nisi ut '
                'aliquip ex ea commodo consequat. Duis aute irure '
                'dolor in reprehenderit in voluptate velit esse cillum '
                'dolore eu fugiat nulla pariatur. Excepteur sint '
                'occaecat cupidatat non proident, sunt in culpa qui '
                'officia deserunt mollit anim id est laborum. ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginBlack,
                  height: 17 / 14,
                ),
              ),
            ),
          ],
        ),
        const Height(30.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/orange_point.svg'),
            const Width(10.0),
            const Expanded(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et '
                'dolore magna aliqua. Ut enim ad minim veniam, '
                'quis nostrud exercitation ullamco laboris nisi ut '
                'aliquip ex ea commodo consequat. Duis aute irure '
                'dolor in reprehenderit in voluptate velit esse cillum '
                'dolore eu fugiat nulla pariatur. Excepteur sint '
                'occaecat cupidatat non proident, sunt in culpa qui '
                'officia deserunt mollit anim id est laborum. ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginBlack,
                  height: 17 / 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
