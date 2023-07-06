import 'package:dio/dio.dart';

class CustomResponse {
  late bool isError;

  late String message;

  late dynamic data;

  CustomResponse(Response<dynamic> response) {
    final map = response.data as Map<String, dynamic>;
    isError = !(map['status'] as bool);
    message = map['message'] == null
        ? 'You don\'t have Message'
        : map['message'] as String;
    if (!isError) {
      data = map['data'];
    } else {
      data = null;
    }
  }
}
