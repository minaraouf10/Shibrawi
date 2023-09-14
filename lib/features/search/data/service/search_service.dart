import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

final searchServiceProvider = Provider<SearchService>(
  (ref) => SearchService(
    ref.read(dioClientProvider),
  ),
);

class SearchService {
  final DioClient client;

  SearchService(this.client);

  Future<List<ProductModel>> searchData(text) async {
    final body = {'text': text};
    final res = CustomResponse(
      await client.post(
        Endpoints.search,
        body: body,
      ),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json)['data'] as List<dynamic>;
    final searchModel =
        data.map((e) => ProductModel.fromJson(e as Json)).toList();
    //ProductModel.fromJson(data);
    log(searchModel.toString());
    return searchModel;
  }
}
