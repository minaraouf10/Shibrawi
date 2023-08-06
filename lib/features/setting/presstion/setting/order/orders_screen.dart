import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/check_details_order.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/ingredients_order.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/order_item.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/orders_top.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: OrdersTop(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: OrderItem(),
            ),
            Height(35.0),
            IngredientsOrder(),
            Height(15.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CheckDetailsOrder(),
            )
          ],
        ),
      ),
    );
  }
}
