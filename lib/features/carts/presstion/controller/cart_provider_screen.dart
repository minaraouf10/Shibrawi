import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/utils/custom_state.dart';
import '../../data/service/carts_service.dart';

final cartProviderScreen = Provider<CartLogic>(
  (ref) => CartLogic(ref: ref, ref.read(cartServiceProvider)),
);

class CartLogic extends _CartStates {
  CartLogic(this.cartService, {required super.ref});

  final CartService cartService;

  // Future<void> getData() async {
  //   isLoading.state = true;
  //   await Future.delayed(const Duration(seconds: 2));
  //   isLoading.state = false;
  // }

  getProductWithCart() async {
    try {
      isLoading.state = true;
      await cartService.getCarTData();

      isLoading.state = false;
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'getProductWithCart');
    } finally {
      isLoading.state = false;
    }
  }
}

class _CartStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<bool> isSuccess;
  final CustomState<String> isError;

  _CartStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isSuccess = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, '');
}
