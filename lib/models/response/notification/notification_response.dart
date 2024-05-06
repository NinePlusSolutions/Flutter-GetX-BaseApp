import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_item.dart';

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationResponse {
  final List<NotificationItem> data;
  final int? totalPages;

  NotificationResponse({required this.data, this.totalPages});

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationResponseToJson(this);
}
