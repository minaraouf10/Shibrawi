import 'package:flutter/material.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/orders_top.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: const [
              OrdersTop(),
            ],
          ),
        ),
      ),
    );
  }
}
