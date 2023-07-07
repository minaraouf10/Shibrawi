import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  const DefaultTextButton({
    Key? key,
    required this.text,
    required this.function,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
  }) : super(key: key);

  final VoidCallback? function;
  final String? text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //highlightColor: AppColors.orange,
      onPressed: function,
      child: Text(
        text!,
        // text!.toUpperCase(),
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
