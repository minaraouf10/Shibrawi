import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

final favoritesServiceProvider = Provider<FavoritesService>(
    (ref) => FavoritesService(ref.read(dioClientProvider)));

class FavoritesService {
  final DioClient client;

  FavoritesService(this.client);

  Future<List<ProductModel>> getFavoriteData() async {
    final res = CustomResponse(
      await client.get(Endpoints.favorites),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json)['data'] as List<dynamic>;
    // final favoriteModels =
    // data.map((element) => FavoriteModel.fromJson(element as Json)).data.map
    final models = data
        .map((e) => ProductModel.fromJson((e as Json)['product'] as Json))
        .toList();

    return models;
  }

  Future<ProductModel> deleteFavorite(int productId) async {
    final body = {
      "product_id": productId,
    };
    final res = CustomResponse(
      await client.post(Endpoints.favorites, body: body),
    );
    if (res.isError) throw res.message;
    final product = ProductModel.fromJson(res.data as Json);
    return product;
  }
}
