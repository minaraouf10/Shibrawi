part of 'router_imports.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case RouteNames.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const BoardingScreen(),
        );

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
        final CategoryModel categoryData = settings.arguments as CategoryModel;
        return MaterialPageRoute(
          builder: (context) => SubItemScreen(categoryData),
        );

      case RouteNames.itemDetailsScreen:
        final ProductModel itemDetailsData = settings.arguments as ProductModel;
        return MaterialPageRoute(
          builder: (context) => ItemDetailsScreen(itemDetailsData),
        );

      case RouteNames.favoriteItemDetailsScreen:
        final Product itemDetailsData = settings.arguments as Product;
        return MaterialPageRoute(
          builder: (context) => FavoriteItemDetailsScreen(itemDetailsData),
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

      case RouteNames.inboxScreen:
        return MaterialPageRoute(
          builder: (context) => const InboxScreen(),
        );

      case RouteNames.ordersScreen:
        return MaterialPageRoute(
          builder: (context) => const OrdersScreen(),
        );

      case RouteNames.checkoutScreen:
        return MaterialPageRoute(
          builder: (context) => const CheckoutScreen(),
        );

      case RouteNames.editProfile:
        return MaterialPageRoute(
          builder: (context) => const EditProfileScreen(),
        );

      case RouteNames.searchScreen:
        return MaterialPageRoute(
          builder: (context) => const SearchScreen(),
        );

      case RouteNames.itemSearchDetailsScreen:
        final SearchData itemSearchDetailsData =
            settings.arguments as SearchData;
        return MaterialPageRoute(
          builder: (context) => ItemSearchDetailsScreen(itemSearchDetailsData),
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
