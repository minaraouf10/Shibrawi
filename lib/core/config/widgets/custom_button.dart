import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/constants/constants.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/shimmer/shimmer_button.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final double width;
  final double height;
  final VoidCallback onPress;
  final VoidCallback? onDisabledPressed;
  final BorderRadiusGeometry? borderRadius;
  final bool isDisabled;
  final bool isLoading;
  final String? prefixIconPath;
  final String? suffixIconPath;
  final Border? border;
  final Color borderColor;
  final double? titleSize;

  const CustomButton({
    super.key,
    required this.title,
    this.titleColor = AppColors.white,
    this.buttonColor = AppColors.primary,
    this.borderColor = Colors.transparent,
    this.width = double.infinity,
    this.height = Constants.buttonHeight,
    required this.onPress,
    this.onDisabledPressed,
    this.textStyle,
    this.borderRadius,
    this.prefixIconPath,
    this.suffixIconPath,
    this.border,
    this.titleSize,
    this.isDisabled = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: isLoading
          ? ShimmerButton(width: width, height: height)
          : GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                if (isDisabled) {
                  onDisabledPressed?.call();
                } else {
                  onPress.call();
                }
              },
              child: Container(
                width: width,
                height: height,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isDisabled ? AppColors.textPlaceholder : buttonColor,
                  borderRadius: borderRadius ?? BorderRadius.circular(5),
                  border: border ?? Border.all(color: borderColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIconPath != null) ...[
                      SvgPicture.asset(prefixIconPath!, height: 24),
                      const SizedBox(width: 10)
                    ],
                    Text(
                      title,
                      style: textStyle ??
                          TextStyle(
                            color: titleColor,
                            fontWeight: FontWeight.w500,
                            fontSize: titleSize ?? 16,
                          ),
                    ),
                    if (suffixIconPath != null) ...[
                      const SizedBox(width: 10),
                      SvgPicture.asset(suffixIconPath!, height: 24)
                    ],
                  ],
                ),
              ),
            ),
    );
  }
}

class CustomButtonOutlined extends CustomButton {
  const CustomButtonOutlined({
    super.key,
    required super.title,
    required super.onPress,
    super.titleColor = AppColors.primary,
    super.buttonColor = AppColors.white,
    super.width = double.infinity,
    super.height = Constants.buttonHeight,
    super.onDisabledPressed,
    super.border,
    super.borderColor = AppColors.primary,
    super.textStyle,
    super.borderRadius,
    super.prefixIconPath,
    super.suffixIconPath,
    super.titleSize,
    super.isDisabled = false,
    super.isLoading = false,
  });
}
