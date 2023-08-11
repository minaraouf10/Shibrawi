import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_item.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120 * 4 + 20 ,
          width: context.width * 0.27,
          decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(30),
                bottomEnd: Radius.circular(30.0),
              ),
              color: AppColors.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              top: 32.0, start: 40.0, end: 20.0),
          child: Column(
            children: [
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  context.pushNamed(RouteNames.subItemScreen);
                },
                child: const MenuItem(
                  icon: AssetsManger.brger,
                  title: 'Food',
                  items: '120 Items',
                ),
              ),
              const Height(40.0),
              InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    context.pushNamed(RouteNames.subItemScreen);
                  },
                  child: const MenuItem(
                    icon: AssetsManger.brger,
                    title: 'Beverages',
                    items: '220 Items',
                  )),
              const Height(40.0),
              const MenuItem(
                icon: AssetsManger.brger,
                title: 'Desserts',
                items: '155 Items',
              ),
              const Height(40.0),
              const MenuItem(
                icon: AssetsManger.brger,
                title: 'Promotions',
                items: '25 Items',
              ),
              const Height(35.0),
            ],
          ),
        )
      ],
    );
  }
}
