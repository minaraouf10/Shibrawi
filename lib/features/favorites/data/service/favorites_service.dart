import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/favorites/data/model/favorites_model.dart';

final favoritesServiceProvider = Provider<FavoritesService>(
    (ref) => FavoritesService(ref.read(dioClientProvider)));

class FavoritesService {
  final DioClient client;

  FavoritesService(this.client);

  Future<List<Product>> getFavoriteData() async {
    final res = CustomResponse(
      await client.get(Endpoints.favorites),
    );
    if (res.isError) throw res.message;
    // final data = (res.data as Json)['data'] as List<dynamic>;
    // final favoriteModels =
    // data.map((element) => FavoriteModel.fromJson(element as Json)).data.map
    final models = FavoriteModel.fromJson(res.data as Json)
        .data
        .map((e) => e.product)
        .toList();

    return models;
  }

  Future<Product> addFavorite(int productId) async {
    final body = {"product_id": productId};
    final res = CustomResponse(
      await client.post(Endpoints.favorites, body: body),
    );
    if (res.isError) throw res.message;
    final product = Product.fromJson(res.data as Json);
    return product;
  }
}
