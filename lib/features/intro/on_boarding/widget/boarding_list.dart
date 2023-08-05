import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/features/auth/data/model/on_boarding_model.dart';

List<BoardingModel> boarding = [
  BoardingModel(
      image: AssetsManger.findFoodYouLove,
      title: 'Find Food You Love',
      body: 'Discover the best foods from over 1,000 ',
      subBody: 'restaurants and fast delivery to your doorstep'),
  BoardingModel(
      image: AssetsManger.delivery,
      title: 'Fast Delivery',
      body: 'Fast food delivery to your home, office ',
      subBody: 'wherever you are'),
  BoardingModel(
      image: AssetsManger.liveTracking,
      title: 'Live Tracking',
      body: 'Real time tracking of your food on the app ',
      subBody: 'once you placed the order'),
];
