import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class CustomizeOrderFavoriteItemDetails extends StatelessWidget {
  CustomizeOrderFavoriteItemDetails({super.key});

  final List<String> portionItems = [
    '- Select the size of portion -',
    'item 2',
    'item 3 ',
  ];

  String? portionSelectedItem = '- Select the size of portion -';

  final List<String> ingredientsItems = [
    '- Select the ingredients -',
    'item 2',
    'item 3 ',
  ];

  String? ingredientsSelectedItem = '- Select the ingredients -';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 15.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Customize your Order',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack,
            ),
          ),
          const Height(20.0),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFf2f2f2),
            padding: const EdgeInsetsDirectional.only(
              start: 32,
              end: 10.0,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: portionSelectedItem,
                style: const TextStyle(
                  color: AppColors.lightBlack,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFF828282),
                ),
                items: portionItems.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.loginBlack),
                    ),
                  );
                }).toList(),
                onChanged: (item) => portionSelectedItem = (item),
              ),
            ),
          ),
          const Height(14.0),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFf2f2f2),
            padding: const EdgeInsetsDirectional.only(
              start: 32,
              end: 10.0,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: ingredientsSelectedItem,
                style: const TextStyle(
                  color: AppColors.lightBlack,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFF828282),
                ),
                items: ingredientsItems.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.loginBlack,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (item) => ingredientsSelectedItem = (item),
              ),
            ),
          ),
          const Height(20.0),
        ],
      ),
    );
  }
}
