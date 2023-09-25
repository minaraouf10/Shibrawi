import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/custom_top_screen/custom_top_screen.dart';
import 'package:shibrawi/features/setting/presstion/setting/payment/widget/add_card_bottom.dart';
import 'package:shibrawi/features/setting/presstion/setting/payment/widget/payment_body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const CustomTopScreen(title: 'Payment Details',enableBack: true,),
              const Height(18.0),
              const PaymentBody(),
              AddCardBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
