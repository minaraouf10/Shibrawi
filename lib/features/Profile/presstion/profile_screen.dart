import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/Profile/presstion/controller/profile_provider_screen.dart';
import 'package:shibrawi/features/Profile/presstion/widget/profile_body.dart';
import 'package:shibrawi/features/Profile/presstion/widget/profile_top.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final profileProvider = ref.read(profileProviderScreen);

    // Call getProfileData() when the widget is built

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      profileProvider.getProfileData();
    });

    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
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
