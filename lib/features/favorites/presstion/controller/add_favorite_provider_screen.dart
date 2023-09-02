import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/favorites/data/service/favorites_service.dart';


final addFavoriteProviderScreen = Provider<AddFavoriteLogic>(
      (ref) => AddFavoriteLogic(ref: ref, ref.watch(favoritesServiceProvider),),
);

class AddFavoriteLogic extends _AddFavoriteStates {
  AddFavoriteLogic(this.favoritesService, {required super.ref});

  final FavoritesService favoritesService;

  // Future<void> getData() async {
  //   isLoading.state = true;
  //   await Future.delayed(const Duration(seconds: 2));
  //   isLoading.state = false;
  // }

  Map<int, bool> favorite = {};


  changeFavorite(productId) async {
    try {
      isLoading.state = true;

      //favorite[productId] = !favorite[productId]!;

    await favoritesService.addFavorite(productId);


    isLoading.state = false;
    isSuccess.state = true;
    } catch (e, s) {
    isError.state = e.toString();
    log(isError.state, stackTrace: s, name: 'change fav');
    } finally {
    isLoading.state = false;
    }
  }
}

class _AddFavoriteStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<bool> isSuccess;

  _AddFavoriteStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isSuccess = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, '');
}
