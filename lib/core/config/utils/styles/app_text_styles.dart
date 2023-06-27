import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class AppTextStyles {
  String nana = '';
  static const TextStyle mainTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textMain,
  );
  static TextStyle subTextStyle = const TextStyle(
    fontSize: 12.0,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static const TextStyle descriptionTextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );
  static TextStyle hintTextStyle = const TextStyle(
    fontSize: 12.0,
    color: AppColors.textPlaceholder,
    fontWeight: FontWeight.w400,
  );
}
