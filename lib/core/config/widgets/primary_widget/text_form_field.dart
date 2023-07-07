import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {Key? key,
      required this.controller,
      this.color = AppColors.gryFormField,
      this.textType = TextInputType.text,
      this.isPassword = false,
      required this.labelText,
      this.suffix,
      this.suffixPressed,
      this.width = double.infinity,
      required this.validate,
      this.onChange})
      : super(key: key);

  final TextEditingController controller;
  final Color color;
  final TextInputType textType;
  final bool isPassword;
  final String labelText;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final double width;
  final FormFieldValidator<String>? validate;
  final ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textType,
        obscureText: isPassword,
        enableSuggestions: false,
        autocorrect: false,
        validator: validate,
        onChanged: onChange,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          labelText: labelText,
          suffixIcon: suffix != null
              ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
              : null,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
