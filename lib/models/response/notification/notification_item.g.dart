// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    NotificationItem(
      thumbnail: json['thumbnail'] as String?,
      thumbnailLink: json['thumbnailLink'] as String?,
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      image: json['image'] as String?,
      url: json['url'] as String?,
      createdOn: json['createdOn'] as String?,
      createdBy: json['createdBy'] as String?,
      notificationId: json['notificationId'] as int?,
    );

Map<String, dynamic> _$NotificationItemToJson(NotificationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'url': instance.url,
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'notificationId': instance.notificationId,
      'thumbnail': instance.thumbnail,
      'thumbnailLink': instance.thumbnailLink,
    };
