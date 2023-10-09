import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';

import '../custom_sized_box.dart';

class CustomTopScreen extends StatelessWidget {
  const CustomTopScreen({
    required this.title,
    this.enableBack = false,
    this.enableCart = true,
    //required this.image,
    super.key,
  });

  final String title;

  //final String image;
  final bool enableBack;
  final bool enableCart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.only(end: 4.0, top: 25.0, bottom: 20.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: (enableBack)
            ? Row(
                children: [
                  InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const Width(20.4),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  (enableCart)
                      ? InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            context.pushNamed(RouteNames.cartsScreen,
                                arguments: false);
                          },
                          child: SvgPicture.asset(AssetsManger.shoppingCart))
                      : Container()
                ],
              )
            : Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      context.pushNamed(RouteNames.cartsScreen,
                          arguments: false);
                    },
                    child: SvgPicture.asset(AssetsManger.shoppingCart),
                  ),
                ],
              ),
      ),
    );
  }
}
