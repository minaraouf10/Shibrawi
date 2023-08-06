import 'package:flutter/material.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({
    super.key,
    this.height = 1.0,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          // start: 20.0,
          // end: 20.0,
          ),
      child: Container(
        width: double.infinity,
        height: height,
        color: Colors.grey[300],
      ),
    );
  }
}
