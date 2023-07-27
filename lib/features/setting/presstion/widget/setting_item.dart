import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 15.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 75.0,
            decoration: BoxDecoration(
              color: AppColors.gryFormField,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Width(13.0),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD8D8D8),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Transform.scale(
                    scale: 0.7,
                    child: SvgPicture.asset(icon),
                  ),
                ),
                const Width(20.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginBlack,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Container(
            width: 33.0,
            height: 33.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.gryFormField),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xFF7C7D7E),
            ),
          ),
        ),
      ],
    );
  }
}
