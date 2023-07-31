import 'package:flutter/material.dart';
import 'package:shibrawi/features/Profile/presstion/widget/profile_body.dart';
import 'package:shibrawi/features/Profile/presstion/widget/profile_top.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Padding(
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
