import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/paymenr_done.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/controller/checkout_provider.dart';
import '../../../../../../../core/config/enums/snack_bar.dart';
import '../../../../../../../core/config/themes/app_colors.dart';
import '../../../../../../../core/config/widgets/primary_widget/default_divider.dart';

class CheckDetails extends StatelessWidget {
  const CheckDetails(this.itemDetailsData, {super.key});

  final ProductModel itemDetailsData;
  final int deliveryCost = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Sub Total",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Spacer(),
                  Text(
                    "\$ ${itemDetailsData.price}",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(12.0),
              Row(
                children: [
                  const Text(
                    "Delivery Cost",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Spacer(),
                  Text(
                    "\$ $deliveryCost",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(12.0),
              Row(
                children: const [
                  Text(
                    "Discount",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "% 10",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(15),
              const DefaultDivider(),
              const Height(15.0),
              Row(
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Spacer(),
                  Text(
                    "\$ ${((itemDetailsData.price + deliveryCost) * 0.9).toStringAsFixed(1)}",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.loginBlack,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const Height(15.0),
            ],
          ),
        ),
        const DefaultDivider(
          height: 12.0,
        ),
        const Height(20.0),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final checkoutProvider = ref.read(checkoutProviderScreen);
            ref.watch(checkoutProvider.isLoading.provider);
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                (checkoutProvider.cash.state)
                    ? context.showBottomSheet(bottomSheetBody: const PaymentDone())
                // context.showCustomSnackBar(
                //         message: 'Your purchase was successful',
                //         snackBarStatus: SnackBarStatus.success,
                //       )
                    : context.showCustomSnackBar(
                        message: 'Sorry, this service is not available now',
                        snackBarStatus: SnackBarStatus.error,
                      );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 55.0,
                  width: context.width,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  alignment: AlignmentDirectional.center,
                  child: const Text(
                    "Send Order",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const Height(20.0),
      ],
    );
  }
}
