import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/Home/data/model/home_model.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

final homeServiceProvider =
    Provider<HomeService>((ref) => HomeService(ref.read(dioClientProvider)));

class HomeService {
  final DioClient client;

  HomeService(this.client);

  Future<List<BannerModel>> getBannersHomeData() async {
    final res = CustomResponse(
      await client.get(Endpoints.home),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json)['banners'] as List<dynamic>;
    final homeProductModel =
        data.map((e) => BannerModel.fromJson(e as Json)).toList();
    log(homeProductModel.toString());
    return homeProductModel;
  }

  Future<List<ProductModel>> getProductHomeData() async {
    final res = CustomResponse(
      await client.get(Endpoints.home),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json)['products'] as List<dynamic>;
    final homeProductModel =
        data.map((e) => ProductModel.fromJson(e as Json)).toList();
    log(homeProductModel.toString());
    return homeProductModel;
  }

  Future<List<ProductModel>> changeFavorite(int productId) async {
    final body = {"product_id": productId};
    final res =
        CustomResponse(await client.post(Endpoints.favorites, body: body));
    if (res.isError) throw res.message;
    final data = (res.data as Json) as List<dynamic>;
    final homeProduct =
        data.map((e) => ProductModel.fromJson(e as Json)).toList();
    return homeProduct;
  }
}
