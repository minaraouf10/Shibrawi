import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerButton extends StatelessWidget {
  final double? borderRadius;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  const ShimmerButton({
    super.key,
    this.borderRadius,
    this.width,
    this.height,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.primaryLight,
      highlightColor: const Color(0xFFF9FAFB),
      child: GestureDetector(
        onTap: onPressed ?? () => {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
          ),
          width: width ?? 220,
          height: 60.0,

          //   height: height ?? 48,
        ),
      ),
    );
  }
}
