import 'package:flutter/material.dart';
import 'package:shibrawi/features/auth/presstion/login/widget/email_password.dart';
import 'package:shibrawi/features/auth/presstion/login/widget/login_with_google.dart';
import 'package:shibrawi/features/auth/presstion/login/widget/top_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TopScreen(),
                EmailPassword(),
                const LoginWithGoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}