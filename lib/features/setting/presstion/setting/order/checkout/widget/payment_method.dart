import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../../../../core/config/widgets/custom_form_add_card/custom_form_add_card.dart';
import '../../controller/checkout_provider.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({super.key});

  final cardNumberController = TextEditingController();
  final monthNumberController = TextEditingController();
  final yearNumberController = TextEditingController();
  final securityCodeNumberController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String groupValue = "";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Payment method",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightBlack,
                ),
                textAlign: TextAlign.left,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.showBottomSheet(
                    bottomSheetBody: CustomFormAddCard(
                      cardNumberController: cardNumberController,
                      monthNumberController: monthNumberController,
                      yearNumberController: yearNumberController,
                      securityCodeNumberController:
                          securityCodeNumberController,
                      firstNameController: firstNameController,
                      lastNameController: lastNameController,
                    ),
                  );
                },
                child: Row(
                  children: const [
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
                    ),
                  ],
                ),
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
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    final checkoutProvider = ref.watch(checkoutProviderScreen);
                    ref.watch(checkoutProvider.cash.provider);
                    return Radio(
                      value: 'cash',
                      groupValue: groupValue,
                      onChanged: (value) => {
                        groupValue = value!,
                        checkoutProvider.selectCashPayment()
                      },
                      activeColor: AppColors.primary,
                    );
                  },
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
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    final checkoutProvider = ref.watch(checkoutProviderScreen);
                    ref.watch(checkoutProvider.cash.provider);
                    return Radio(
                      value: 'card',
                      groupValue: groupValue,
                      onChanged: (value) => {
                        groupValue = value!,
                        checkoutProvider.selectCardPayment()
                      },
                      activeColor: AppColors.primary,
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
