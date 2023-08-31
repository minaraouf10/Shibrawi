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
          const Height(25.0),
          Center(
            child: CircleAvatar(
              backgroundImage: const NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/graduationproject-59b11.appspot.com/o/user%2FIMG-20230419-WA0012.jpg?alt=media&token=f2066043-4bab-49a8-8f98-8b538628e301',
              ),
              radius: 60.0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(AssetsManger.profilePicture)),
            ),
          ),
          const Height(40.0),
        ],
      ),
    );
  }
}
