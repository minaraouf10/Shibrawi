import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/menu/presstion/widget/menu_body.dart';
import 'package:shibrawi/features/menu/presstion/widget/menu_search_bar.dart';
import 'package:shibrawi/features/menu/presstion/widget/menu_title.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: MenuTitle(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MenuSearchBar(),
              ),
              const Height(25.0),
              const MenuBody(),
            ],
          ),
        ],
      ),
    );
  }
}
