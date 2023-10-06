import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    String groupValue = "Yes";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Payment method",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightBlack,
                ),
                textAlign: TextAlign.left,
              ),
              Spacer(),
              Icon(
                Icons.add,
                color: AppColors.primary,
                size: 20.0,
              ),
              Width(5.0),
              Text(
                "Add Card",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
          const Height(20.0),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xfff6f6f6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                border: Border.all(width: 0.3)),
            child: Row(
              children: [
                const Width(20.0),
                const Text(
                  "Cash on delivery",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                Radio(
                  value: 'Yes',
                  groupValue: groupValue,
                  onChanged: (value) => {groupValue = value!},
                  autofocus: true,
                  activeColor: AppColors.primary,
                )
              ],
            ),
          ),
          const Height(15.0),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xfff6f6f6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                border: Border.all(width: 0.3)),
            child: Row(
              children: [
                const Width(20.0),
                Image.asset(AssetsManger.visaPng),
                const Width(10.0),
                const Text(
                  "**** **** **** 2187",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                Radio(
                  value: 'card',
                  groupValue: groupValue,
                  onChanged: (value) => {groupValue = value!},
                  autofocus: true,
                  activeColor: AppColors.primary,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
