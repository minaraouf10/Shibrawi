
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';
import 'package:shibrawi/features/menu/data/service/menu_service.dart';

final productProvider = FutureProvider<List<ProductModel>>((ref) async {
  final menuService = ref.read(menuServiceProvider);
  final products = await menuService.getProductData(44);
  log(products.toString(), name: 'ProductProvider');
  return products;
});
