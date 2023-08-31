import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/core/data/locale/user_pref.dart';
import 'package:shibrawi/features/auth/data/model/user_model.dart';

final profileServiceProvider = Provider<ProfileService>((ref) => ProfileService(
      ref.watch(dioClientProvider),
      ref.watch(userPrefsProvider),
    ));

class ProfileService {
  final DioClient client;
  final UserPrefs prefs;

  ProfileService(this.client, this.prefs);

  Future<UserModel> profileServices() async {
    final res = CustomResponse(await client.get(
      Endpoints.profile,
    ));
    if (res.isError) throw res.message;
    final data = res.data as Json;
    final userModel = UserModel.fromJson(data);
    return userModel;
  }

  Future<void> logOutService() async => UserPrefs.deleteUserToken();

  Future<UserModel> editProfile(String name, String email, String phone) async {
    final body = {"name": name, "phone": phone, "email": email};

    final res = CustomResponse(
      await client.put(Endpoints.updateProfile, body: body),
    );
    if(res.isError) throw res.message;
    final data = res.data as Json;
    final userModel = UserModel.fromJson(data);
    return userModel;
  }
}
