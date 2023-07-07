import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/features/intro/on_boarding/widget/boarding_item.dart';
import 'package:shibrawi/features/intro/on_boarding/widget/boarding_list.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  BoardingScreenState createState() => BoardingScreenState();
}

class BoardingScreenState extends State<BoardingScreen> {
  @override
  void initState() {
    super.initState();
    BoardingItem.pageController = PageController();
  }

  @override
  void dispose() {
    BoardingItem.pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      BoardingItem.currentPage = index;
    });
  }

  void _navigateToNextPage() {
    if (BoardingItem.currentPage < boarding.length - 1) {
      BoardingItem.pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacementNamed(
        context,
        RouteNames.loginScreen,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: BoardingItem.pageController,
                  itemCount: boarding.length,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (context, index) {
                    return BoardingItem(model: boarding[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: DefaultButton(
                  function: _navigateToNextPage,
                  text: BoardingItem.currentPage < boarding.length - 1
                      ? 'Next'
                      : 'Get Started',
                  background: AppColors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
