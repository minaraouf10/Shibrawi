import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/auth/data/model/on_boarding_model.dart';
import 'package:shibrawi/features/intro/on_boarding/widget/boarding_list.dart';

class BoardingItem extends StatelessWidget {
  BoardingModel model;
  static late PageController pageController;
  static int currentPage = 0;

  BoardingItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 30.0, bottom: 20.0),
            child: SvgPicture.asset(
              model.image,
              width: double.infinity,
              //height: 350.0,
            ),
          ),
        ),
        // const Height(30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildPageIndicator(),
        ),
        const Height(30.0),
        Expanded(
          flex: 1,
          child: Text(
            model.title,
            style: const TextStyle(
              fontSize: 28.0,
              color: AppColors.loginBlack,
            ),
          ),
        ),
        //const Height(30.0),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                model.body,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: AppColors.loginBlack,
                ),
              ),
              // const Height(30.0),
              Text(
                model.subBody,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: AppColors.loginBlack,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<Widget> buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < boarding.length; i++) {
      indicators.add(
        Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == currentPage ? AppColors.primary : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
