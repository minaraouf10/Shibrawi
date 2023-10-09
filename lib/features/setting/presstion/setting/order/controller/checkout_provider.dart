import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/config/utils/custom_state.dart';

final checkoutProviderScreen = Provider<CheckOutLogic>(
  (ref) => CheckOutLogic(ref: ref),
);

class CheckOutLogic extends _CheckOutStates {
  CheckOutLogic({required super.ref});

  selectCashPayment() {
    isLoading.state = true;
    cash.state = true;
    isLoading.state = false;
  }

  selectCardPayment() {
    isLoading.state = true;
    cash.state = false;
    isLoading.state = false;
  }
}

class _CheckOutStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<bool> cash;

  _CheckOutStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        cash = CustomState<bool>(ref, false);
}
