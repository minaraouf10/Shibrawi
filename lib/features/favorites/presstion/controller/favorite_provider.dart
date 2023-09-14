import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/favorites/data/service/favorites_service.dart';
import 'package:shibrawi/features/menu/data/model/product_model.dart';

final favoriteProvider = FutureProvider.autoDispose<List<ProductModel>>(
  (ref) async {
    final favoriteService = ref.read(favoritesServiceProvider);
    final favorite = await favoriteService.getFavoriteData();
    log(favorite.toString(), name: 'favoriteProvider');
    return favorite;
  },
);
