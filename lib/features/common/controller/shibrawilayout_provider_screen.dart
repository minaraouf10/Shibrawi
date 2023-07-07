import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/Cart/presstion/cart_screen.dart';
import 'package:shibrawi/features/Home/home_screen.dart';
import 'package:shibrawi/features/favorites/presstion/favorites_screen.dart';
import 'package:shibrawi/features/menu/presstion/menu_screen.dart';
import 'package:shibrawi/features/setting/presstion/setting_screen.dart';

final shibrawilayoutProviderScreen = Provider<ShibrawiLayoutLogic>(
  (ref) => ShibrawiLayoutLogic(ref: ref),
);

class ShibrawiLayoutLogic extends ShibrawiLayoutStates {
  ShibrawiLayoutLogic({required super.ref});

  List<Widget> screens = [
    const MenuScreen(),
    const FavoritesScreen(),
    const HomeScreen(),
    const CartScreen(),
    const SettingScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex.state = index;
  }
}

class ShibrawiLayoutStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<int> currentIndex;

  ShibrawiLayoutStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        currentIndex = CustomState<int>(ref, 2);
}
