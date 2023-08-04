import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/data/locale/pref.dart';

final userPrefsProvider = Provider<UserPrefs>((ref) {
  return UserPrefs();
});

const sharedTokenId = 'token';

class UserPrefs {
  static final prefs = SharedPrefs.instance;

  static Future<void> setUserToken(String token) =>
      prefs.setString(sharedTokenId, token);

  static String getUserToken() => prefs.getString(sharedTokenId) ?? '';

  static Future<void> deleteUserToken() async => prefs.remove(sharedTokenId);

  static bool get isUserLoggedIn => prefs.getString('token') != null;
}
