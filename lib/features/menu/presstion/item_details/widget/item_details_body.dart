import 'package:flutter/material.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(30),
          topStart: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
