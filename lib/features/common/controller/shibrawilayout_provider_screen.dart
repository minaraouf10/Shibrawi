import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/Home/presstion/home_screen.dart';
import 'package:shibrawi/features/Profile/presstion/profile/profile_screen.dart';
import 'package:shibrawi/features/favorites/presstion/favorites_screen.dart';
import 'package:shibrawi/features/menu/presstion/menu/menu_screen.dart';
import 'package:shibrawi/features/setting/presstion/setting/setting_screen/setting_screen.dart';

final shibrawilayoutProviderScreen = Provider<ShibrawiLayoutLogic>(
  (ref) => ShibrawiLayoutLogic(ref: ref),
);

class ShibrawiLayoutLogic extends ShibrawiLayoutStates {
  ShibrawiLayoutLogic({required super.ref});

  List<Widget> screens = [
    const MenuScreen(),
    const FavoritesScreen(),
    const HomeScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex.state = index;
  }
}

class ShibrawiLayoutStates {
  final ProviderRef ref;
  final CustomState<int> currentIndex;

  ShibrawiLayoutStates({required this.ref})
      : currentIndex = CustomState<int>(ref, 2);
}
