import 'package:flutter/material.dart';
import 'package:shibrawi/features/setting/presstion/setting/inbox/widget/inbox_item.dart';
import 'package:shibrawi/features/setting/presstion/setting/inbox/widget/inbox_top.dart';

import '../../../../../core/config/widgets/custom_top_screen/custom_top_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const CustomTopScreen(title: 'Inbox',enableBack: true,),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => const InboxItem(),
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
