class NotificationModel {
  late final List<NotificationData> notification = [];

  NotificationModel.fromJson(Map<String, dynamic> json) {
    json['data'].forEach((element) {
      notification.add(NotificationData.fromJson(element));
    });
  }
}

class NotificationData {
  late int id;
  late String title;
  late String message;

  NotificationData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    message = json['message'];
  }
}
