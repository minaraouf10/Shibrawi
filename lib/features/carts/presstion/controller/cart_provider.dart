import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

import '../../data/service/carts_service.dart';

final cartProvider = FutureProvider.autoDispose<List<ProductModel>>(
  (ref) async {
    final cartService = ref.read(cartServiceProvider);
    final carts = await cartService.getCarTData();
    log(carts.toString(), name: 'getCarTData');
    return carts;
  },
);
