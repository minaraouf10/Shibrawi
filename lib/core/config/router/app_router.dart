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
