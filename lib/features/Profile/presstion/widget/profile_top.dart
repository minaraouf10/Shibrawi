import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(AssetsManger.shoppingCart)
              ],
            ),
            const Height(25.0),
            CircleAvatar(
              backgroundImage: const NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/graduationproject-59b11.appspot.com/o/user%2FIMG-20230419-WA0012.jpg?alt=media&token=f2066043-4bab-49a8-8f98-8b538628e301',
              ),
              radius: 60.0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(AssetsManger.profilePicture)),
            ),
            const Height(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AssetsManger.editIcon),
                const Width(5.0),
                const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const Height(10.0),
            const Text(
              'Mina Raouf Fawzi',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.loginBlack),
            ),
            const Height(10.0),
            const Text(
              'Sign Out',
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
                color: AppColors.lightBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
