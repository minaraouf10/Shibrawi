import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubItemMenuTitle extends StatelessWidget {
  const SubItemMenuTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          children: [
            const Icon(Icons.arrow_back_ios_new_outlined),
            const Text(
              'Desserts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/shopping-cart.svg')
          ],
        ),
      ),
    );
  }
}
