import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/data/locale/pref.dart';

final langPrefsProvider = Provider((ref) {
  return LangPrefs();
});

class LangPrefs {
  final prefs = SharedPrefs.instance;
  final isKeyArabic = 'lang';

  String get lang => isArabic ? 'ar' : 'en';

  String get getFontFamily => isArabic ? 'Expo' : 'Poppins';

  bool get isArabic => prefs.getBool(isKeyArabic) ?? true;

  Future<void> setLangToArabic() => prefs.setBool(isKeyArabic, true);

  Future<void> setLangToEnglish() => prefs.setBool(isKeyArabic, false);

  //Locale get locale => isArabic ? const Locale('ar') : const Locale('en');
  Locale get locale => isArabic ? const Locale('en') : const Locale('en');
}
