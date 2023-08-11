import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/menu/data/model/category_model.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

final menuServiceProvider =
    Provider<MenuService>((ref) => MenuService(ref.read(dioClientProvider)));

class MenuService {
  final DioClient client;

  MenuService(this.client);

  Map<int, bool> favorite = {};

  // Future<MenuDataModel> getProductData() async {
  //   final res = CustomResponse(
  //     await client.get(Endpoints.home),
  //   );
  //   if (res.isError) throw res.message;
  //   final data = res.data as Json;
  //   final menuModel = MenuDataModel.fromJson(data);
  //   for (var element in menuModel.products) {
  //     favorite.addAll({element.id: element.inFavorites});
  //   }
  //   log(favorite.toString());
  //   return menuModel;
  // }

  Future<List<CategoryModel>> getCategoryData() async {
    final res = CustomResponse(
      await client.get(Endpoints.categories),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json)['data'] as List<dynamic>;
    final categoryModels =
        data.map((element) => CategoryModel.fromJson(element as Json)).toList();
    return categoryModels;
  }

  Future<List<ProductModel>> getProductData(int id) async {
    final query = {
      "category_id": id,
    };

    final res =
        CustomResponse(await client.get(Endpoints.products, query: query));
    if (res.isError) throw res.message;
    final data = (res.data as Json)['data'] as List<dynamic>;
    final productModel =
        data.map((e) => ProductModel.fromJson(e as Json)).toList();
    return productModel;
  }
}
