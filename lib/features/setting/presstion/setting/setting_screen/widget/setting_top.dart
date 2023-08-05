import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class SettingTop extends StatelessWidget {
  const SettingTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'More',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(AssetsManger.shoppingCart)
              ],
            ),
            const Height(25.0),
          ],
        ),
      ),
    );
  }
}
