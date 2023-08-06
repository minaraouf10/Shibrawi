import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/Profile/presstion/controller/profile_provider_screen.dart';
import 'package:shibrawi/features/Profile/presstion/widget/profile_body.dart';
import 'package:shibrawi/features/Profile/presstion/widget/profile_top.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileProvider = ref.read(profileProviderScreen);

    // Call getProfileData() when the widget is built
    profileProvider.getProfileData();

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
