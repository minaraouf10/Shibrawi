import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

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
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
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
              clipBehavior: Clip.antiAlias,
              fit: BoxFit.cover,
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
