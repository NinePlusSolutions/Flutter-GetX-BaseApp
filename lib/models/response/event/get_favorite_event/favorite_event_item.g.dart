// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_event_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteEventItem _$FavoriteEventItemFromJson(Map<String, dynamic> json) =>
    FavoriteEventItem(
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      organizer: json['organizer'] as String?,
      capacity: json['capacity'] as String?,
      contactEmail: json['contactEmail'] as String?,
      contactPhone: json['contactPhone'] as String?,
      isActive: json['isActive'] as bool,
      createdOn: json['createdOn'] as String?,
      image: json['image'] as String?,
      imageLink: json['imageLink'] as String?,
      invitation: json['invitation'] as int?,
      userLimit: json['userLimit'] as int?,
      status: json['status'] as int?,
      eventId: json['eventId'] as int?,
      imageHomeLink: json['imageHomeLink'] as String?,
      priority: json['priority'] as int?,
      eventEndDate: json['eventEndDate'] as String?,
      eventStartDate: json['eventStartDate'] as String?,
    );

Map<String, dynamic> _$FavoriteEventItemToJson(FavoriteEventItem instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'organizer': instance.organizer,
      'capacity': instance.capacity,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'isActive': instance.isActive,
      'priority': instance.priority,
      'createdOn': instance.createdOn,
      'image': instance.image,
      'imageLink': instance.imageLink,
      'invitation': instance.invitation,
      'userLimit': instance.userLimit,
      'status': instance.status,
      'imageHomeLink': instance.imageHomeLink,
      'eventStartDate': instance.eventStartDate,
      'eventEndDate': instance.eventEndDate,
    };
