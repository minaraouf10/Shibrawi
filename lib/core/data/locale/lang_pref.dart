import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/data/locale/pref.dart';
import 'package:shibrawi/generated/translations.g.dart';

final langPrefsProvider = Provider((ref) {
  return LangPrefs();
});

class LangPrefs {
  final prefs = SharedPrefs.instance;
  final isKeyArabic = 'lang';

  String get lang => isArabic ? 'ar' : 'en';

  String get getFontFamily => isArabic ? 'Expo' : 'Poppins';

  bool get isArabic =>
      prefs.getBool(isKeyArabic) ??
      (LocaleSettings.currentLocale.languageCode == AppLocale.ar.languageCode);

  Future<void> setLangToArabic() => prefs.setBool(isKeyArabic, true);

  Future<void> setLangToEnglish() => prefs.setBool(isKeyArabic, false);

  Locale get locale => isArabic ? const Locale('ar') : const Locale('en');
}
