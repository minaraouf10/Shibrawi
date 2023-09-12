import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../menu/presstion/controller/menu_provider_screen.dart';

class NumberOfPortionsFavorite extends ConsumerWidget {
  const NumberOfPortionsFavorite({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final numberOfPiece = ref.watch(menuProviderScreen);
    ref.watch(numberOfPiece.isLoading.provider);
    return Row(
      children: [
        const Text(
          'Number of Portions',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: AppColors.loginBlack,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: ()=> numberOfPiece.minusNumberOfPiece(),
          child: Container(
            width: 50,
            height: 30.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(30),
                color: AppColors.primary),
            child: const Icon(
              Icons.remove,
              color: AppColors.white,
              size: 20,
            ),
          ),
        ),
        const Width(5),
        Container(
          width: 50,
          height: 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(30),
            border: Border.all(
              color: AppColors.primary,
              width: 1.3,
            ),
          ),
          child:  Center(
            child: Text(
              numberOfPiece.pieceController.text,
              style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary),
            ),
          ),
        ),
        const Width(5),
        InkWell(
          onTap: () => numberOfPiece.addNumberOfPiece(),
          child: Container(
            width: 50,
            height: 30.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(30),
                color: AppColors.primary),
            child: const Icon(
              Icons.add,
              color: AppColors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
