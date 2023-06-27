import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/constants/constants.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class CustomAuthWidget extends StatelessWidget {
  const CustomAuthWidget({
    super.key,
    required this.backgroundImagePath,
    required this.child,
    required this.backgroundHeight,
  });

  final String backgroundImagePath;
  final Widget child;
  final double? backgroundHeight;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(
          expandedHeight: backgroundHeight ?? context.height * 0.3,
          elevation: 0,
          toolbarHeight: 100,
          pinned: true,
          backgroundColor: AppColors.white,
          leading: const SizedBox.shrink(),
          flexibleSpace: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  backgroundImagePath,
                  fit: BoxFit.cover,
                  width: context.width,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.horizontalPadding,
                      ),
                      child: Container(
                        height: 20,
                        padding: const EdgeInsets.symmetric(
                          vertical: Constants.verticalPadding,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryLight,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              Constants.borderRadius * 5,
                            ),
                            topRight: Radius.circular(
                              Constants.borderRadius * 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.horizontalPadding,
                        vertical: Constants.verticalPadding,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            Constants.borderRadius * 5,
                          ),
                          topRight: Radius.circular(
                            Constants.borderRadius * 5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.horizontalPadding,
            ),
            child: child,
          ),
        )
      ],
    );
  }
}
