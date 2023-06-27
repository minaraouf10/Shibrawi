import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/data/locale/pref.dart';

final userPrefsProvider = Provider<UserPrefs>((ref) {
  return UserPrefs();
});

const sharedTokenId = 'token';
class UserPrefs {
  final prefs = SharedPrefs.instance;

  Future<void> setUserToken(String token) =>
      prefs.setString(sharedTokenId, token);

  String getUserToken() => prefs.getString(sharedTokenId) ?? '';

  Future<void> deleteUserToken() async => prefs.remove(sharedTokenId);

  bool get isUserLoggedIn => prefs.getString('token') != null;
}
