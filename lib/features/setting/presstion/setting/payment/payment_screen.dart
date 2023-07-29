import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/setting/presstion/setting/payment/widget/payment_body.dart';
import 'package:shibrawi/features/setting/presstion/setting/payment/widget/payment_top.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: const [
              PaymentTop(),
              Height(18.0),
              PaymentBody(),
            ],
          ),
        ),
      ),
    );
  }
}
