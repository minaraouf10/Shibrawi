import 'package:flutter/material.dart';
import 'package:shibrawi/features/Profile/presstion/edit_profile/widget/edit_profile_body.dart';
import 'package:shibrawi/features/Profile/presstion/edit_profile/widget/edit_profile_top.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
                child: EditProfileTop(),
              ),
              EditProfileBody(),
            ],
          ),
        ),
      ),
    );
  }
}
