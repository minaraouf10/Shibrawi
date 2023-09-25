import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/enums/snack_bar.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/widgets/custom_top_screen/custom_top_screen.dart';
import 'package:shibrawi/features/Profile/presstion/edit_profile/widget/edit_profile_body.dart';

import '../../../../core/config/utils/assets_manager.dart';
import '../../../../core/config/widgets/custom_sized_box.dart';
import '../controller/profile_provider_screen.dart';

class EditProfileScreen extends ConsumerWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final profileBodyProvider = ref.read(profileProviderScreen);

    ref.listen(profileBodyProvider.isSuccess.provider, (previous, state) {
      context.showCustomSnackBar(
        message: 'Updated Successfully',
        snackBarStatus: SnackBarStatus.success
      );
    });

    ref.listen(profileBodyProvider.isError.provider, (previous, state) {
      context.showCustomSnackBar(
          message: state,
          snackBarStatus: SnackBarStatus.error
      );
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
                child: CustomTopScreen(title: 'Edit Profile',enableBack: true,),
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
                    child: SvgPicture.asset(AssetsManger.profilePicture),
                  ),
                ),
              ),
              const Height(40.0),
              const EditProfileBody(),
            ],
          ),
        ),
      ),
    );
  }
}
