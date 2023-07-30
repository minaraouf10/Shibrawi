import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';

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
          bottomSheetBody: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: SvgPicture.asset(
                    'assets/icons/exit.svg',
                  ),
                ),
                const Text(
                  "Add Credit/Debit Card",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.loginBlack,
                    height: 17 / 14,
                  ),
                ),
                const Height(18.0),
                const DefaultDivider(),
                const Height(15.0),
                TextForm(
                  textType: TextInputType.number,
                  controller: cardNumberController,
                  labelText: 'Card Number',
                  validate: (String? value) {
                    return 'Card number cannot be empty';
                  },
                ),
                const Height(15.0),
                Row(
                  children: [
                    const Text(
                      "Expiry",
                      style:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                        height: 17/14,
                      ),
                    ),
                    const Width(56.0),
                    TextForm(
                      textType: TextInputType.number,
                      width: 100.0,
                      controller: monthNumberController,
                      labelText: 'MM',
                      validate: (String? value) {
                        return 'Month cannot be empty';
                      },
                    ),
                    const Width(25.0),
                    TextForm(
                      textType: TextInputType.number,
                      width: 105.0,
                      controller: yearNumberController,
                      labelText: 'YY',
                      validate: (String? value) {
                        return 'Year cannot be empty';
                      },
                    ),
                  ],
                ),
                const Height(15.0),
                TextForm(
                  textType: TextInputType.number,
                  controller: securityCodeNumberController,
                  labelText: 'Security Code',
                  validate: (String? value) {
                    return 'Security code cannot be empty';
                  },
                ),
                const Height(15.0),
                TextForm(
                  textType: TextInputType.number,
                  controller: firstNameController,
                  labelText: 'First Name',
                  validate: (String? value) {
                    return 'first name cannot be empty';
                  },
                ),
                const Height(15.0),
                TextForm(
                  textType: TextInputType.number,
                  controller: lastNameController,
                  labelText: 'Last Name',
                  validate: (String? value) {
                    return 'last name cannot be empty';
                  },
                ),
                const Height(30.0),
                Row(
                  children: const[
                     Text(
                      "You can remove this card",
                      style:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                        height: 17/14,
                      ),
                    )
                  ],
                ),
                const Height(35.0),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    height: 55,
                    width: context.width,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding:  EdgeInsetsDirectional.only(start: 75.0),
                          child: Icon(
                            Icons.add,
                            color: AppColors.white,
                            size: 30.0,
                          ),
                        ),
                        Width(45.0),
                        Text(
                          "Add Card",
                          style:  TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                            height: 19/16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Height(30.0),
              ],
            ),
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
                height: 19 / 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
