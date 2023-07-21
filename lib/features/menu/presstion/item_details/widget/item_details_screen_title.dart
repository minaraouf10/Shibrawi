import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class ItemDetailsScreenTitle extends StatelessWidget {
  const ItemDetailsScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColors.white,
                )),
            const Width(20.4),
            const Spacer(),
            SvgPicture.asset('assets/icons/favorites_icon.svg')
          ],
        ),
      ),
    );
  }
}
