class RoutingPrefs {
  RoutingPrefs._();

  //
  static String initial = '/';

  //     globalRefContainer.read(onBoardingPrefsProvider).getOnBoarding()
  //         ? globalRefContainer.read(userPrefsProvider).isUserLoggedIn
  //             ? AppNameRoutes.homeRoute
  //             : AppNameRoutes.welcomeRoute
  //         : AppNameRoutes.onBoardingRoute;

  static String get initialRoute => initial;
}
