import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_item.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width * 0.27,
          decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(30),
                bottomEnd: Radius.circular(30.0),
              ),
              color: AppColors.orange),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              top: 32.0, start: 40.0, end: 20.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  context.pushNamed(RouteNames.subItemScreen);
                },
                child: const MenuItem(),
              ),
              const Height(35.0),
              const MenuItem(),
              const Height(35.0),
              const MenuItem(),
              const Height(35.0),
              const MenuItem(),
              const Height(35.0),
            ],
          ),
        )
      ],
    );
  }
}
