import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/Home/data/service/home_service.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

final homeProductProvider = FutureProvider<List<ProductModel>>((ref) async {
  final homeService = ref.read(homeServiceProvider);
  final homeData = await homeService.getProductHomeData();
  log(homeData.toString(), name: 'homeProvider');
  return homeData;
});
