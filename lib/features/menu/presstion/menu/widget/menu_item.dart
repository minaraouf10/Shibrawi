import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 36,
            end: 15.0,
          ),
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 40.0,
              vertical: 10.0,
            ),
            height: 70.0,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 4,
                ),
              ],
              border: Border.all(color: Colors.white, width: 2.0),
            ),
            child: const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                children: [
                  Text(
                    'Food',
                    style: TextStyle(
                      color: AppColors.loginBlack,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Height(5.0),
                  Text(
                    '120 item',
                    style: TextStyle(
                        color: AppColors.foreground,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/images/Find food you love vector.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 4,
                  )
                ],
              ),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.orange,
              ),
            ))
      ],
    );
  }
}
