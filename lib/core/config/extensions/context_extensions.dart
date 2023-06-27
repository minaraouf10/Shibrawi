import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/enums/snack_bar.dart';
import 'package:shibrawi/core/config/extensions/route_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/styles/app_text_styles.dart';


extension ThemeExtentions on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;

  Color get scaffoldColor => Theme.of(this).scaffoldBackgroundColor;
}

extension ContextExtentions on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  bool get canPop {
    final currentRoute = ModalRoute.of(this)?.settings.name;
    final isLastPage = currentRoute == RouteNames.bottomNavBar ||
        currentRoute == RouteNames.loginScreen;
    return navigator.canPop() && !isLastPage;
  }

  void pop({Object? result}) => navigator.pop(result);

  Future pushNamed(String routeName, {Object? arguments}) async {
    return navigator.pushNamed(routeName, arguments: arguments);
  }

  Future pushNamedAndRemoveUntil(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) async {
    return navigator.pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  Future pushNamedAndRemoveAll(String routeName, {Object? arguments}) {
    return pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  Future restart() async =>
      navigator.pushReplacement(currentRoute.withoutAnimation);

  ModalRoute get currentRoute => ModalRoute.of(this)!;

  Object? get args => currentRoute.settings.arguments;

  String get currentRouteName => currentRoute.settings.name!;
}

extension ScreenExtentions on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;

  void requestFocus([FocusNode? node]) =>
      FocusScope.of(this).requestFocus(node);

  void requestNewFocusNode() => requestFocus(FocusNode());
}

extension CustomSnackBar on BuildContext {
  Color getSnackBarColor(SnackBarStatus snackBarStatus) {
    late Color bgColor;
    if (snackBarStatus == SnackBarStatus.success) {
      bgColor = AppColors.success;
    } else if (snackBarStatus == SnackBarStatus.error) {
      bgColor = AppColors.danger;
    } else {
      bgColor = AppColors.warning;
    }
    return bgColor;
  }

  showCustomSnackBar({
    required String message,
    required SnackBarStatus snackBarStatus,
  }) async {
    final Color bgColor = getSnackBarColor(snackBarStatus);
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: bgColor,
        content: Text(
          message,
          style: AppTextStyles.hintTextStyle.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

extension ShowBottomSheet on BuildContext {
  void showBottomSheet({
    required Widget bottomSheetBody,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          width: width,
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: width * .30,
                height: 6,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.textPlaceholder,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              bottomSheetBody,
            ],
          ),
        ),
      ),
      context: this,
    );
  }
}

extension ShowAlertDialog on BuildContext {
  Future<void> showCustomAlertDialog({
    required Widget child,
  }) async {
    return showDialog(
      context: this,
      builder: (context) => AlertDialog(
        content: child,
      ),
    );
  }
}

// extension CallLaunchUrl on BuildContext {
//   Future<void> callLaunchUrl({required String url, LaunchMode? mode}) async {
//     final Uri uri = Uri.parse(url);
//     await launchUrl(uri, mode: mode ?? LaunchMode.platformDefault);
//   }
// }
