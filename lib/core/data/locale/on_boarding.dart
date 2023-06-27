import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/data/locale/pref.dart';

final onBoardingPrefsProvider = Provider<OnBoardingPrefs>((ref) {
  return OnBoardingPrefs();
});

class OnBoardingPrefs {
  final prefs = SharedPrefs.instance;

  void setOnBoarding({required bool seen}) => prefs.setBool('onBoarding', seen);

  bool getOnBoarding() => prefs.getBool('onBoarding') ?? false;
}
