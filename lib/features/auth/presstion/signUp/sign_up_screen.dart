import 'package:flutter/material.dart';
import 'package:shibrawi/features/auth/presstion/signUp/widget/sign_up_field.dart';
import 'package:shibrawi/features/auth/presstion/signUp/widget/sign_up_title.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SignUpTitle(),
                SignUpField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
