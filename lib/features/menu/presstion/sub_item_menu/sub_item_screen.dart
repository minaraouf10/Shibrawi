import 'package:flutter/material.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_search_bar.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/sub_item_menu_title.dart';

import '../../../../core/config/widgets/custom_sized_box.dart';

class SubItemScreen extends StatelessWidget {
  const SubItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SubItemMenuTitle(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MenuSearchBar(),
              ),
              const Height(25.0),
            ],
          ),
        ],
      ),
    );
  }
}
