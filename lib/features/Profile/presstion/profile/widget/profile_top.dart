import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/Profile/presstion/controller/profile_provider_screen.dart';

class ProfileTop extends ConsumerWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profileProvider = ref.read(profileProviderScreen);
    ref.watch(profileProvider.isLocalImage.provider);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: [
            const Height(5.0),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: (profileProvider.getImage.state)
                  ? FileImage(profileProvider.profileImage!)
                  : NetworkImage(profileProvider.image) as ImageProvider,
              // (profileProvider.getImage.state) ? Image.asset(profileProvider.i):NetworkImage(profileProvider.image ?? ''
              //'https://firebasestorage.googleapis.com/v0/b/graduationproject-59b11.appspot.com/o/user%2FIMG-20230419-WA0012.jpg?alt=media&token=f2066043-4bab-49a8-8f98-8b538628e301',
              //     ),
              radius: 60.0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () => {}, //profileProvider.getProfileImage(),
                  child: SvgPicture.asset(AssetsManger.profilePicture),
                ),
              ),
            ),
            const Height(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AssetsManger.editIcon),
                const Width(5.0),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () => context.pushNamed(RouteNames.editProfile),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            const Height(10.0),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final profileTopProvider = ref.read(profileProviderScreen);
                ref.watch(profileTopProvider.isLoading.provider);
                return Text(
                  "Hi ${profileTopProvider.nameController.text}",
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                  ),
                );
              },
            ),
            const Height(10.0),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final profileTopProvider = ref.read(profileProviderScreen);
                return InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    profileTopProvider.logOut();
                    context.pushNamed(RouteNames.loginScreen);
                  },
                  child: const Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightBlack,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
