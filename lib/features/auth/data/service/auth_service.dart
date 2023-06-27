import 'dart:io';

import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/api_helper/exceptions.dart';
import 'package:shibrawi/core/config/constants/keys.dart';


class AuthService {
  final DioClient client;

  AuthService(this.client);

  Future<void> login(String phoneNumber, String password) async {
    final body = {
      'phoneNumber': phoneNumber,
      'password': password,
    };
    final res = await client.post(Endpoints.login, body: body);
    if (res.statusCode != HttpStatus.ok) {
      final data = res.data as Map;
      throw ApiExceptionMessage(data[Keys.msg] as String);
    }

    /// save local user
  }
}
