import 'package:flutter/material.dart';
import 'package:shibrawi/features/Home/home_screen.dart';

class ShibrawiLayout extends StatelessWidget {
  const ShibrawiLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen(),
    );
  }
}