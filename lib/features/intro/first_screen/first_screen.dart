import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/features/intro/first_screen/widget/login_signUp.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              AssetsManger.firstPageImage,
              fit: BoxFit.cover,
            ),
          ),
          const LoginOrSignUp()
        ],
      ),
    );
  }
}
