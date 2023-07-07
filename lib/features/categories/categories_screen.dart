import 'package:flutter/material.dart';
import 'package:shibrawi/features/categories/widget/categories_title.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CategoriesTitle()
        ],
      ),
    );
  }
}