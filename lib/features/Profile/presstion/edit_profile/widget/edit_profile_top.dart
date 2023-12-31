import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class EditProfileTop extends StatelessWidget {
  const EditProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Icon(Icons.arrow_back_ios_new_outlined)),
              const Width(20.4),
              const Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginBlack,
                  height: 29 / 24,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(AssetsManger.shoppingCart)
            ],
          ),
        ],
      ),
    );
  }
}
