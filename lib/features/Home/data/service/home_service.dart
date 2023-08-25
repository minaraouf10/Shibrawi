import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';

final homeServiceProvider =
    Provider<HomeService>((ref) => HomeService(ref.read(dioClientProvider)));

class HomeService {
  final DioClient client;

  HomeService(this.client);

  // Future<HomeDataModel> getHomeData() async {
  //   final res = CustomResponse(
  //     await client.get(Endpoints.home),
  //   );
  //   if (res.isError) throw res.message;
  //   final data = res.data as Json;
  //   final homeModel = HomeDataModel.fromJson(data);
  //   log(homeModel.toString());
  //   return homeModel;
  // }
}
