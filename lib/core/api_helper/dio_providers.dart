import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/data/locale/lang_pref.dart';
import 'package:shibrawi/core/data/locale/user_pref.dart';

final dioProvider = Provider<Dio>(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        validateStatus: (_) => true,
        followRedirects: true,
        headers: {
          'accept': 'application/json',
        },
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    );
    return dio;
  },
);

final dioClientProvider = Provider<DioClient>(
  (ref) => DioClient(
    dio: ref.read(dioProvider),
    langPrefs: ref.watch(langPrefsProvider),
    userPrefs: ref.watch(userPrefsProvider),
  ),
);
