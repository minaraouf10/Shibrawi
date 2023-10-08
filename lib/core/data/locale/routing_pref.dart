import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/data/locale/user_pref.dart';

class RoutingPrefs {
  RoutingPrefs._();

  //
  static String initial = UserPrefs.isUserLoggedIn
      ? RouteNames.shibrawiLayout
      : RouteNames.onBoarding;

  static String get initialRoute =>
      //RouteNames.settingScreen;
      initial;
}
