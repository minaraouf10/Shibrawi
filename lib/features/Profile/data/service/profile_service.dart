import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/core/data/locale/user_pref.dart';
import 'package:shibrawi/features/auth/data/model/user_model.dart';

final profileServiceProvider = Provider<ProfileService>(
  (ref) => ProfileService(
    ref.watch(dioClientProvider),
    ref.watch(userPrefsProvider),
  ),
);

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

  Future<void> logOutService() async {
    final body = {"fcm_token": UserPrefs.getUserToken()};
    final res = CustomResponse(
      await client.post(Endpoints.logout, body: body),
    );
    if (res.isError) throw res.message;
    UserPrefs.deleteUserToken();
  }

  Future<UserModel> editProfile(
    String name,
    String email,
    String phone,
    // File file,
  ) async {
    final body = {
      "name": name,
      "phone": phone,
      "email": email,
      // "image": await MultipartFile.fromFile(file.path, filename:fileName),
    };

    final res = CustomResponse(
      await client.put(
        Endpoints.updateProfile,
        body: body,
      ),
    );
    if (res.isError) throw res.message;
    final data = res.data as Json;
    final userModel = UserModel.fromJson(data);
    return userModel;
  }

// Future<String> uploadImage(File file) async {
//   String fileName = file.path.split('/').last;
//   FormData formData = FormData.fromMap({
//     "image":
//     await MultipartFile.fromFile(file.path, filename:fileName),
//   });
//   response = await dio.post("/info", data: formData);
//   return response.data['id'];
// }
//
// Future<UserModel> uploadImageToApi(
//   String name,
//   String email,
//   String phone,
//   File image,
// ) async {
//   final body = {
//     "name": name,
//     "phone": phone,
//     "email": email,
//     "image": image,
//   };
//
//   final res = CustomResponse(
//     await client.put(Endpoints.updateProfile, body: body),
//   );
//   if (res.isError) throw res.message;
//   final data = res.data as Json;
//   final userModel = UserModel.fromJson(data);
//   return userModel;
// }
}
