import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/utils/custom_state.dart';
import '../../../menu/data/model/product_model.dart';
import '../../data/service/home_service.dart';

final changeFavoriteProviderScreen = Provider<ChangeFavoriteLogic>(
  (ref) => ChangeFavoriteLogic(ref: ref, ref.read(homeServiceProvider)),
);

class ChangeFavoriteLogic extends _ChangeFavoriteStates {
  ChangeFavoriteLogic(this.homeService, {required super.ref});

  HomeService homeService;

  changeFavorite(ProductModel product) async {
    try {
      isLoading.state = true;

      await homeService.changeFavorite(product.id);
      product.isFavorites = !product.isFavorites;
      isLoading.state = false;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'change fav');
    } finally {
      isLoading.state = false;
    }
  }
}

class _ChangeFavoriteStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;

  _ChangeFavoriteStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, '');
}
