import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/setting/data/model/notification/notification_model.dart';
import 'package:shibrawi/features/setting/data/service/notification_service.dart';

final notificationProvider = FutureProvider<NotificationModel>((ref) async {
  final notificationService = ref.read(settingServiceProvider);
  final notificationData = await notificationService.getNotificationData();
  log(notificationData.toString(), name: 'notificationProvider');
  return notificationData;
});
