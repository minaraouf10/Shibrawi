import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/menu/data/model/category_model.dart';
import 'package:shibrawi/features/menu/data/service/menu_service.dart';

final menuProviderScreen = Provider<MenuLogic>(
  (ref) => MenuLogic(ref: ref, menuService: ref.read(menuServiceProvider)),
);

class MenuLogic extends _MenuStates {
  MenuLogic({required super.ref, required this.menuService});

  final MenuService menuService;
  List<CategoryModel> categories = [];

  final TextEditingController pieceController = TextEditingController();

// void getCategories() async{
//   try{
//     isLoading.state = true;
//     categories = await menuService.getCategoryData();
//     isSuccess.state = true;
//   } catch(e,s){
//     isError.state = e.toString();
//     log(isError.state, stackTrace: s);
//   } finally{
//     isLoading.state = false;
//   }
// }

  Future<int> addNumberOfPiece(pieceController) async {
    try {
      isLoading.state = true;
      ref.watch(pieceController.notifier).state++;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
    return pieceController;
  }

  Future<int> minusNumberOfPiece(pieceController) async {
    try {
      isLoading.state = true;
      ref.watch(pieceController.notifier).state--;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
    return pieceController;
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
