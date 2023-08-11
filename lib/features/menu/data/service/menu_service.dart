import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/menu/data/model/menu_model.dart';

final menuServiceProvider =
    Provider<MenuService>((ref) => MenuService(ref.read(dioClientProvider)));

class MenuService {
  final DioClient client;

  MenuService(this.client);

  Map<int, bool> favorite = {};


  Future<MenuDataModel> getProductData() async {
    final res = CustomResponse(
      await client.get(Endpoints.home),
    );
    if (res.isError) throw res.message;
    final data = res.data as Json;
    final menuModel = MenuDataModel.fromJson(data);
    for (var element in menuModel.products) {
      favorite.addAll({element.id: element.inFavorites});
    }
    log(favorite.toString());
    return menuModel;
  }
}
