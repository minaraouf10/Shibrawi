import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.function,
    required this.text,
    this.width = double.infinity,
    this.background = AppColors.orange,
    this.isUpperCase = true,
    this.radius = 3.0,
    this.fontSize = 16.0,
  }) : super(key: key);

  final double width;
  final Color background;
  final bool isUpperCase;
  final double radius;
  final Function() function;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 10,end: 10,top: 5.0),
      margin:const EdgeInsetsDirectional.symmetric(horizontal: 5),
      width: width,
     // height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: background,
      ),
      child: MaterialButton(
       // splashColor:AppColors.orange,
         highlightColor: AppColors.orange,
         onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style:  TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
