import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_text_button.dart';
import 'package:shibrawi/generated/translations.g.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40.0,
        ),
        Text(
          tr.login_with,
          style: const TextStyle(fontSize: 15.0, color: AppColors.lightBlack),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(10),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: AppColors.faceBook,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/faceBook.svg'),
              const SizedBox(
                width: 10.0,
              ),
              MaterialButton(
                highlightColor: AppColors.faceBook,
                onPressed: () {},
                child: const Text(
                  'Login with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(10),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: AppColors.google),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/google.svg'),
              const SizedBox(
                width: 10.0,
              ),
              MaterialButton(
                highlightColor: AppColors.google,
                onPressed: () {},
                child: const Text(
                  'Login with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an Account? ',
              style: TextStyle(fontSize: 15.0, color: AppColors.lightBlack),
            ),
            DefaultTextButton(
              text: 'Sign Up',
              fontSize: 17.0,
              color: AppColors.orange,
              function: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.signUpScreen,
                );
              },
            )
          ],
        )
      ],
    );
  }
}
