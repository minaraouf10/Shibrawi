import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/menu/data/model/category_model.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';
import 'package:shibrawi/features/menu/data/service/menu_service.dart';

final menuProviderScreen = Provider<MenuLogic>(
  (ref) => MenuLogic(ref: ref, menuService: ref.read(menuServiceProvider)),
);

class MenuLogic extends _MenuStates {
  MenuLogic({required super.ref, required this.menuService});

  final MenuService menuService;
  List<CategoryModel> categories = [];

  final TextEditingController pieceController =
      TextEditingController(text: '0');

  Future<void> addNumberOfPiece() async {
    try {
      isLoading.state = true;
      final oldCount = int.parse(pieceController.text);
      pieceController.text = (oldCount + 1).toString();
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
  }

  Future<void> minusNumberOfPiece() async {
    try {
      isLoading.state = true;
      final oldCount = int.parse(pieceController.text);
      if (oldCount <= 0) {
        pieceController.text = (0).toString();
      } else {
        pieceController.text = (oldCount - 1).toString();
      }
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
  }

  changeFavorite(ProductModel product) async {
    try {
      isLoading.state = true;
      await menuService.addFavorite(product.id);
      product.isFavorites = !product.isFavorites;
      isLoading.state = false;
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'change fav');
    } finally {
      isLoading.state = false;
    }
  }

  addOrRemoveToCard(productId) async {
    try {
      isLoading.state = true;
      await menuService.addOrRemoveWithCard(productId);
      isLoading.state = false;
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'addOrRemoveToCard');
    } finally {
      isLoading.state = false;
    }
  }
}

class _MenuStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<bool> isSuccess;
  final CustomState<String> isError;
  final CustomState<int> numberPiece;

  _MenuStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isSuccess = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        numberPiece = CustomState<int>(ref, 0);
}
