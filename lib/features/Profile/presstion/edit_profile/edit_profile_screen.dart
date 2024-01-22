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
  Widget build(BuildContext context, ref) {
    final profileBodyProvider = ref.read(profileProviderScreen);
    ref.watch(profileBodyProvider.isLocalImage.provider);
    ref.listen(profileBodyProvider.isSuccess.provider, (previous, state) {
      context.showCustomSnackBar(
          message: 'Updated Successfully',
          snackBarStatus: SnackBarStatus.success);
    });

    ref.listen(profileBodyProvider.isError.provider, (previous, state) {
      context.showCustomSnackBar(
          message: state, snackBarStatus: SnackBarStatus.error);
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
                child: CustomTopScreen(
                  title: 'Edit Profile',
                  enableBack: true,
                ),
              ),
              const Height(25.0),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: (profileBodyProvider.getImage.state)
                      ? FileImage(profileBodyProvider.profileImage!)
                      : NetworkImage(profileBodyProvider.image)
                          as ImageProvider,
                  radius: 60.0,
                  child: InkWell(
                    onTap: () => profileBodyProvider.getProfileImage(),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(AssetsManger.profilePicture),
                    ),
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
