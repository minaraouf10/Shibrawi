import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_divider.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/checkout_top.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/checkout/widget/delivery_address_checkout.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CheckoutTop(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DeliveryAddressCheckout(),
            ),
            DefaultDivider(
              height: 12.0,
            ),
            Height(20.0),
            /// payment method
          ],
        ),
      ),
    );
  }
}