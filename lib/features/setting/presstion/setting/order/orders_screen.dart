import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/custom_top_screen/custom_top_screen.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/check_details_order.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/ingredients_order.dart';
import 'package:shibrawi/features/setting/presstion/setting/order/widget/order_item.dart';

import '../../../../menu/data/model/product_model.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen(this.itemDetailsData,{super.key});
 final ProductModel itemDetailsData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children:  [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTopScreen(
                  title: 'My Order',
                  enableBack: true,
                  enableCart: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: OrderItem(itemDetailsData),
              ),
              const Height(35.0),
            //  const IngredientsOrder(),
              const Height(15.0),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CheckDetailsOrder(itemDetailsData),
              ),
              const Height(10.0),
            ],
          ),
        ),
      ),
    );
  }
}
