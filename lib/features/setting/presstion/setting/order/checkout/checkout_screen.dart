import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/check_details.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/checkout_top.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/delivery_address_checkout.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/payment_method.dart';

import '../../../../../menu/data/model/product_model.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen(this.itemDetailsData, {super.key});

  final ProductModel itemDetailsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CheckoutTop(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: DeliveryAddressCheckout(),
              ),
              const DefaultDivider(
                height: 12.0,
              ),
              const Height(20.0),
              PaymentMethod(),
              const Height(20.0),
              const DefaultDivider(
                height: 12.0,
              ),
              const Height(15.0),
              CheckDetails(itemDetailsData)
            ],
          ),
        ),
      ),
    );
  }
}
