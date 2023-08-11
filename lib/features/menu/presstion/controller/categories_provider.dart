import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/menu/data/model/category_model.dart';
import 'package:shibrawi/features/menu/data/service/menu_service.dart';

final categoriesProvider = FutureProvider<List<CategoryModel>>((ref) async {
  final menuService = ref.read(menuServiceProvider);
  final categories = await menuService.getCategoryData();
  log(categories.toString(),name: 'categoriesProvider');
  return categories;
});