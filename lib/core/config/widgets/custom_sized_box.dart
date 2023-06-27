import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/constants/constants.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Constants.defaultPadding,
      width: width,
    );
  }
}
