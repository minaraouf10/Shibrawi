import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../../../core/config/widgets/custom_form_add_card/custom_form_add_card.dart';

class AddCardBottom extends StatelessWidget {
  AddCardBottom({super.key});

  final cardNumberController = TextEditingController();
  final monthNumberController = TextEditingController();
  final yearNumberController = TextEditingController();
  final securityCodeNumberController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        context.showBottomSheet(
          bottomSheetBody: CustomFormAddCard(
            cardNumberController: cardNumberController,
            monthNumberController: monthNumberController,
            yearNumberController: yearNumberController,
            securityCodeNumberController: securityCodeNumberController,
            firstNameController: firstNameController,
            lastNameController: lastNameController,
          ),
        );
      },
      child: Container(
        height: 55.0,
        width: context.width,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: const [
            Width(15.0),
            Icon(
              Icons.add,
              color: AppColors.white,
              size: 30.0,
            ),
            Width(20.0),
            Text(
              "Add Another Credit/Debit Card",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
