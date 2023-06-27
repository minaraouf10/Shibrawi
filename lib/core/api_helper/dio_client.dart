import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shibrawi/core/api_helper/exceptions.dart';
import 'package:shibrawi/core/data/locale/lang_pref.dart';
import 'package:shibrawi/core/data/locale/user_pref.dart';


/// wrapper around dio to handlers api calls
class DioClient {
  final Dio dio;
  final LangPrefs langPrefs;
  final UserPrefs userPrefs;

  DioClient({
    required this.userPrefs,
    required this.dio,
    required this.langPrefs,
  });

  Future<String> get userToken async => userPrefs.getUserToken();

  /// sends a [GET] request to the given [url]

  Future<Response> get(
    String path, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    bool attachToken = true,
    String? token,
  }) =>
      validateResponse(
        () async => dio.get(
          path,
          queryParameters: {
            ...query,
          },
          options: Options(
            headers: {
              if (attachToken) 'Authorization': token ?? await userToken,
              ...headers,
              'Accept-Language': langPrefs.locale.toString(),
            },
          ),
        ),
      );

  Future<Response> post(
    String path, {
    Object body = const {},
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    String? contentType,
    bool attachToken = true,
    String? token,
  }) =>
      validateResponse(
        () async => dio.post(
          path,
          queryParameters: {
            ...query,
          },
          data: body,
          options: Options(
            headers: {
              'Accept-Language': langPrefs.locale.toString(),
              if (attachToken) 'Authorization': token ?? await userToken,
              ...headers,
            },
          ),
        ),
      );

  Future<Response> delete(
    String path, {
    Object body = const {},
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    String? contentType,
    bool attachToken = true,
    String? token,
  }) =>
      validateResponse(
        () async => dio.delete(
          path,
          queryParameters: {
            ...query,
          },
          data: body,
          options: Options(
            headers: {
              'Accept-Language': langPrefs.locale.toString(),
              if (attachToken) 'Authorization': token ?? await userToken,
              ...headers,
            },
          ),
        ),
      );

  Future<Response> put(
    String path, {
    Object body = const {},
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    String? contentType,
    bool attachToken = true,
    String? token,
  }) =>
      validateResponse(
        () async => dio.put(
          path,
          queryParameters: {
            ...query,
          },
          data: body,
          options: Options(
            headers: {
              'Accept-Language': langPrefs.locale.toString(),
              if (attachToken) 'Authorization': token ?? await userToken,
              ...headers,
            },
          ),
        ),
      );
}

Future<Response> validateResponse(
  Future<Response> Function() zone,
) async {
  try {
    final res = await zone();

    if (res.statusCode == 200 &&
        res.data != null &&
        res.data is String &&
        (res.data! as String).isEmpty) {
      throw EmptyBadResponse();
    }
    switch (res.statusCode) {
      case HttpStatus.internalServerError:
        throw InternalServerError();
      case HttpStatus.unauthorized:
        throw UnAuthorized(res);
      default:
        return res;
    }
  } on DioError catch (e, st) {
    log(e.toString());
    log(st.toString());
    if (e.type == DioErrorType.connectionTimeout ||
        e.type == DioErrorType.receiveTimeout ||
        e.type == DioErrorType.sendTimeout ||
        e.type == DioErrorType.unknown) {
      final hasConnection = await InternetConnectionCheckerPlus().hasConnection;
      if (!hasConnection) {
        throw NoInternetConnection();
      }
      throw InternalServerError();
    }
    rethrow;
  }
}

Object? extractError(dynamic data) => data is Map ? data['msg'] : null;
