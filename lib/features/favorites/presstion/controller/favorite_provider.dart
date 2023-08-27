import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/favorites/data/model/favorites_model.dart';
import 'package:shibrawi/features/favorites/data/service/favorites_service.dart';

final favoriteProvider = FutureProvider<List<Product>>(
  (ref) async {
    final favoriteService = ref.read(favoritesServiceProvider);
    final favorite = await favoriteService.getFavoriteData();
    log(favorite.toString(), name: 'favoriteProvider');
    return favorite;
  },
);
