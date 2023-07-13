import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/generated/translations.g.dart';

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 22.0,
        top: 32.0,
        end: 22.0,
        bottom: 10.0,
      ),
      child: Column(
        children: [
          Text(
            tr.discover_the_best_foods,
            style: const TextStyle(fontSize: 15.0, color: AppColors.lightBlack),
          ),
          Text(
            tr.restaurants_and_fast_delivery,
            style: const TextStyle(fontSize: 15.0, color: AppColors.lightBlack),
          ),
          const SizedBox(
            height: 28.0,
          ),
          DefaultButton(
            width: MediaQuery.of(context).size.width,
            function: () {
              Navigator.pushNamed(
                context,
                RouteNames.loginScreen,
              );
            },
            text: tr.login,
            isUpperCase: false,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            // padding: const EdgeInsetsDirectional.only(
            //   start: 10,
            //   end: 10,
            // ),
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: AppColors.orange,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.signUpScreen,
                );
              },
              child: Text(
                tr.create_an_account,
                style: const TextStyle(
                  color: AppColors.orange,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
