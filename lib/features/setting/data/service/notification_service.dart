import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/api_helper/custom_response.dart';
import 'package:shibrawi/core/api_helper/dio_client.dart';
import 'package:shibrawi/core/api_helper/endpoints.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/setting/data/model/notification/notification_model.dart';

import '../../../../core/api_helper/dio_providers.dart';

final settingServiceProvider = Provider<SettingService>(
    (ref) => SettingService(ref.read(dioClientProvider)));

class SettingService {
  final DioClient client;

  SettingService(this.client);

  Future<NotificationModel> getNotificationData() async {
    final res = CustomResponse(
      await client.get(Endpoints.notifications),
    );
    if (res.isError) throw res.message;
    final data = res.data as Json;
    final notificationModel = NotificationModel.fromJson(data);
    log(notificationModel.toString());
    return notificationModel;
  }
}
