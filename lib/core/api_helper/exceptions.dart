import 'package:dio/dio.dart';
import 'package:shibrawi/generated/translations.g.dart';

abstract class ApiException implements Exception {}

class ApiExceptionMessage implements ApiException {
  final String? message;

  ApiExceptionMessage([this.message]);

  @override
  String toString() => message ?? tr.error_occurred;
}

class EmptyBadResponse implements ApiException {
  @override
  String toString() => tr.something_error_try_again;
}

class NoInternetConnection implements ApiException {
  @override
  String toString() {
    return tr.no_internet;
  }
}

class InternalServerError implements ApiException {
  @override
  String toString() => tr.something_error_try_again;
}

class BadRequest implements InternalServerError {
  final Response<Map<String, dynamic>> res;

  BadRequest(this.res);
}

class UnAuthorized implements ApiException {
  final Response res;

  UnAuthorized(this.res);

  @override
  String toString() {
    return (res.data as Map<String, dynamic>)['Message'].toString();
  }
}
