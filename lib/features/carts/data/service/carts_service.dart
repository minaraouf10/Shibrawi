import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../../../menu/data/model/product_model.dart';

final cartServiceProvider =
    Provider<CartService>((ref) => CartService(ref.read(dioClientProvider)));

class CartService {
  final DioClient client;

  CartService(this.client);

  Future<List<ProductModel>> getCarTData() async {
    final res = CustomResponse(await client.get(Endpoints.carts));
    if (res.isError) throw res.message;
    final data = (res.data as Json)['cart_items'] as List<dynamic>;
    final model =
        data.map((e) => ProductModel.fromJson((e as Json)['product'])).toList();
    return model;
  }
}
