import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
          image: NetworkImage(
              'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1688048074~exp=1688048674~hmac=4a507d1cafa27f59203cbff19455a6beedea882d54cf1ccbc07aac28db121297'),
          height: 100.0,
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'offers',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15.0,
            color: AppColors.loginBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
