import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

import '../../../../../core/config/enums/snack_bar.dart';
import '../../../data/model/product_model.dart';
import '../../controller/menu_provider_screen.dart';

class TotalPriceItem extends ConsumerWidget {
  final ProductModel data;

  const TotalPriceItem(this.data, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    final numberOfPiece = ref.watch(menuProviderScreen);
    ref.watch(numberOfPiece.isLoading.provider);

    ref.listen(numberOfPiece.isSuccess.provider, (_, state) {
      context.showCustomSnackBar(
        message: 'Added Successfully',
        snackBarStatus: SnackBarStatus.success,
      );
    });

    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 7,
            start: 20,
            end: 15.0,
          ),
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 40.0,
              vertical: 5.0,
            ),
            height: 99.0,
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 4,
                ),
              ],
              border: Border.all(color: Colors.white, width: 2.0),
            ),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Column(
                children: [
                  const Text(
                    'Total Price',
                    style: TextStyle(
                      color: AppColors.lightBlack,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Height(7.0),
                  Text(
                    'LKR ${data.price * int.parse(numberOfPiece.pieceController.text)}',
                    style: const TextStyle(
                      color: AppColors.loginBlack,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Height(7.0),
                  Container(
                    width: 150,
                    height: 29,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadiusDirectional.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => numberOfPiece.addOrRemoveToCard(data.id),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1,
                              child: SvgPicture.asset(
                                AssetsManger.group,
                              ),
                            ),
                            const Width(18.0),
                            const Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Transform.scale(
              scale: 0.5,
              child: SvgPicture.asset(
                AssetsManger.shoppingCardOrange,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
