import 'dart:async';


import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:shibrawi/core/config/constants/constants.dart';
import 'package:shibrawi/core/config/utils/styles/app_text_field_border_styles.dart';
import 'package:shibrawi/core/config/utils/styles/app_text_styles.dart';
import 'package:shibrawi/generated/translations.g.dart';

class InternationalPhoneNumberView extends StatelessWidget {
  const InternationalPhoneNumberView({
    super.key,
    required this.controller,
    required this.onCountryChanged,
    this.onChanged,
    this.disableLengthCheck = false,
    this.validator,
  });

  final TextEditingController controller;
  final ValueChanged<Country>? onCountryChanged;
  final ValueChanged<PhoneNumber>? onChanged;
  final bool disableLengthCheck;
  final FutureOr<String?> Function(PhoneNumber?)? validator;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        hintText: tr.enter_your_phone_number,
        hintStyle: AppTextStyles.hintTextStyle.copyWith(
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Constants.horizontalPadding,
          vertical: Constants.defaultPadding / 1.2,
        ),
        border: AppTextFieldBorderStyles.border,
        enabledBorder: AppTextFieldBorderStyles.border,
        focusedBorder: AppTextFieldBorderStyles.border,
        disabledBorder: AppTextFieldBorderStyles.border,
        errorBorder: AppTextFieldBorderStyles.errorBorder,
        focusedErrorBorder: AppTextFieldBorderStyles.errorBorder,
      ),
      invalidNumberMessage: tr.invalid_field,
      disableLengthCheck: disableLengthCheck,
      pickerDialogStyle: PickerDialogStyle(
        searchFieldInputDecoration: InputDecoration(
          hintText: tr.search_country,
          icon: const Icon(
            Icons.search,
          ),
        ),
      ),
      textAlign: TextAlign.start,
      initialCountryCode: 'EG',
      controller: controller,
      onCountryChanged: onCountryChanged,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
