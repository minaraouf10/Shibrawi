import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/dio_providers.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/data/locale/user_pref.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) => AuthService(
    ref.read(dioClientProvider),
    prefs: ref.read(userPrefsProvider)
  ),
);

class AuthService {
  final DioClient client;
  
  final UserPrefs prefs;

  AuthService(this.client,{ required this.prefs});
  

  Future<void> login(String email, String password) async {
    final body = {
      'email': email,
      'password': password,
    };
    final res = await client.post(Endpoints.login, body: body);
    final data = CustomResponse(res);
    if (data.isError) throw data.message;
    log(data.data.toString());

    prefs.setUserToken(data.data['token']);
   // log(data.data.data.toString());
    /// save local user
  }

  Future<void> signUp (String name,String email ,String password,String phone)async {
    final body ={
      'name' : name,
      'email': email,
      'password': password,
      'phone': phone,
    };
    final res = await client.post(Endpoints.register,body: body);
    final data = CustomResponse(res);
    if(data.isError) throw data.message;
    log(data.data.toString());
  }
}
