import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/features/auth/data/model/on_boarding_model.dart';

import '../../../../generated/translations.g.dart';

List<BoardingModel> boarding = [
  BoardingModel(
      image: AssetsManger.findFoodYouLove,
      title: tr.Find_Food_You_Love,
      body: tr.Discover_the_best_foods_from_over,
      subBody: tr.restaurants_and_fast_delivery_to_your_doorstep),
  BoardingModel(
      image: AssetsManger.delivery,
      title: tr.Fast_Delivery,
      body: tr.Fast_food_body,
      subBody: tr.Fast_food_suBody),
  BoardingModel(
      image: AssetsManger.liveTracking,
      title: tr.Live_Tracking,
      body: tr.Live_Tracking_body,
      subBody: tr.Live_Tracking_suBody),
];
