import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/constants/constants.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/styles/app_text_field_border_styles.dart';
import 'package:shibrawi/core/config/utils/styles/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.title,
    this.suffixIconPath,
    this.keyboardType,
    this.isPassword = false,
    this.readOnly = false,
    this.onPressed,
    this.prefixIconPath,
    this.validator,
    this.onChanged,
    this.minLines,
    this.maxLines,
    this.autofocus = false,
    this.suffixIconOnPressed,
    this.controller,
    this.prefixIconColor,
    this.hintTextStyle,
    this.maxLength,
    this.onEditingComplete,
    this.textInputAction,
  });

  final String hint;
  final String? suffixIconPath;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool readOnly;
  final String? prefixIconPath;
  final Function()? onPressed;
  final String? title;
  final int? minLines;
  final int? maxLines;
  final bool autofocus;
  final Function()? suffixIconOnPressed;
  final Color? prefixIconColor;
  final TextStyle? hintTextStyle;
  final int? maxLength;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Padding(
            padding: const EdgeInsets.only(
              left: Constants.defaultPadding / 2,
              bottom: Constants.defaultPadding,
            ),
            child: Text(
              title!,
              style: AppTextStyles.titleTextStyle.copyWith(
                fontSize: 16,
                color: AppColors.black,
              ),
            ),
          ),
        ],
        TextFormField(
          controller: controller,
          autocorrect: false,
          obscureText: isPassword,
          keyboardType: keyboardType,
          validator: validator,
          onChanged: onChanged,
          readOnly: readOnly,
          textInputAction: textInputAction ?? TextInputAction.done,
          onTap: onPressed,
          maxLines: maxLines ?? 5,
          minLines: minLines ?? 1,
          autofocus: autofocus,
          maxLength: maxLength,
          onEditingComplete: onEditingComplete,
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxLength),
          ],
          cursorColor: AppColors.primary,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            filled: true,
            counterText: '',
            fillColor: AppColors.white,
            hintText: hint,
            hintStyle: hintTextStyle ??
                const TextStyle(
                  color: AppColors.textPlaceholder,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Constants.horizontalPadding,
              vertical: Constants.defaultPadding / 1.2,
            ),
            suffixIcon: (suffixIconPath != null)
                ? Padding(
                    padding: const EdgeInsets.only(
                      right: Constants.defaultPadding,
                      left: Constants.defaultPadding / 4,
                    ),
                    child: InkWell(
                      onTap: suffixIconOnPressed,
                      child: SvgPicture.asset(
                        suffixIconPath!,
                      ),
                    ),
                  )
                : null,
            prefixIcon: (prefixIconPath != null)
                ? Padding(
                    padding: const EdgeInsets.all(
                      Constants.defaultPadding * 2.5,
                    ),
                    child: SvgPicture.asset(
                      prefixIconPath!,
                      colorFilter: ColorFilter.mode(
                        prefixIconColor ?? AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                : null,
            border: AppTextFieldBorderStyles.border,
            enabledBorder: AppTextFieldBorderStyles.border,
            focusedBorder: AppTextFieldBorderStyles.border,
            disabledBorder: AppTextFieldBorderStyles.border,
            errorBorder: AppTextFieldBorderStyles.errorBorder,
            focusedErrorBorder: AppTextFieldBorderStyles.errorBorder,
          ),
        ),
      ],
    );
  }
}
