part of 'router_imports.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case RouteNames.firstScreen:
        return MaterialPageRoute(
          builder: (context) => const FirstScreen(),
        );

      case RouteNames.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case RouteNames.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );

      case RouteNames.shibrawiLayout:
        return MaterialPageRoute(
          builder: (context) => const ShibrawiLayout(),
        );

      case RouteNames.shimmerButton:
        return MaterialPageRoute(
          builder: (context) => const ShimmerButton(),
        );

      case RouteNames.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RouteNames.subItemScreen:
        return MaterialPageRoute(
          builder: (context) => const SubItemScreen(),
        );

      case RouteNames.itemDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const ItemDetailsScreen(),
        );

      case RouteNames.paymentScreen:
        return MaterialPageRoute(
          builder: (context) => const PaymentScreen(),
        );

      case RouteNames.notificationScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );

      case RouteNames.aboutUsScreen:
        return MaterialPageRoute(
          builder: (context) => const AboutUsScreen(),
        );
    }
  }

// MaterialPageRoute get onBoarding => MaterialPageRoute(
//       builder: (_) => OnBoardingScreen(),
//     );
}

class NoAnimationRoute extends PageRouteBuilder {
  NoAnimationRoute({
    super.settings,
    required Widget Function(BuildContext context) builder,
  }) : super(
          pageBuilder: (context, __, ___) => builder(context),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
}
