import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/Profile/presstion/controller/profile_provider_screen.dart';
import 'package:shibrawi/features/Profile/presstion/profile/widget/profile_body.dart';
import 'package:shibrawi/features/Profile/presstion/profile/widget/profile_top.dart';

import '../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final profileProvider = ref.read(profileProviderScreen);

    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        profileProvider.getProfileData();
      },
    );

    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTopScreen(title: 'Profile'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ProfileTop(),
            ),
            ProfileBody()
          ],
        ),
      ),
    );
  }
}
