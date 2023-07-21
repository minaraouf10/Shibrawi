import 'package:flutter/material.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 4.0,
            spreadRadius: 18.0,
          ), //BoxShadow
        ],
        borderRadius: const BorderRadiusDirectional.only(
          topEnd: Radius.circular(50),
          topStart: Radius.circular(50),
=======
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
>>>>>>> origin/main
        ),
      ),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
