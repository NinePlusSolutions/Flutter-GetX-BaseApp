import 'package:json_annotation/json_annotation.dart';

part 'notification_item.g.dart';

@JsonSerializable()
class NotificationItem {
  final int id;
  final String title;
  final String content;
  final String? image;
  final String? url;
  final String? createdOn;
  final String? createdBy;
  final int? notificationId;
  final String? thumbnail;
  final String? thumbnailLink;

  NotificationItem({
    required this.thumbnail,
    required this.thumbnailLink,
    required this.id,
    required this.title,
    required this.content,
    this.image,
    this.url,
    this.createdOn,
    this.createdBy,
    this.notificationId,
  });

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationItemToJson(this);
}
