import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/Home/data/model/home_model.dart';
import 'package:shibrawi/features/Home/data/service/home_service.dart';

final homeBannerProvider = FutureProvider<List<BannerModel>>((ref) async {
  final homeService = ref.read(homeServiceProvider);
  final homeData = await homeService.getBannersHomeData();
  log(homeData.toString(), name: 'homeProvider');
  return homeData;
});
