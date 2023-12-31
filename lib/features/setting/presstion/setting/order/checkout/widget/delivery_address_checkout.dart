import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class DeliveryAddressCheckout extends StatelessWidget {
  const DeliveryAddressCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Delivery Address",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: AppColors.lightBlack,
          ),
        ),
        const Height(17.0),
        Row(
          children: const [
            Expanded(
              child: Text(
                "27 Ahmed Essa Street, "
                "Hadayek El Kobba, Cairo",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4a4b4d),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Width(147.0),
            Text(
              "Change",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xfffc6011),
                height: 16 / 13,
              ),
            )
          ],
        ),
        const Height(20.0),
      ],
    );
  }
}
