// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventItem _$EventItemFromJson(Map<String, dynamic> json) => EventItem(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      eventStartDate: json['eventStartDate'] as String,
      eventEndDate: json['eventEndDate'] as String,
      organizer: json['organizer'] as String,
      capacity: json['capacity'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      contactEmail: json['contactEmail'] as String,
      contactPhone: json['contactPhone'] as String,
      isActive: json['isActive'] as bool,
      createdOn: json['createdOn'] as String,
      image: json['image'] as String,
      imageHome: json['imageHome'] as String,
      imageLink: json['imageLink'] as String,
      invitation: json['invitation'],
      userLimit: json['userLimit'] as int,
      status: json['status'],
      imageHomeLink: json['imageHomeLink'] as String,
      totalParticipants: json['totalParticipants'],
      eventFlag: json['eventFlag'] as int,
      eventHot: json['eventHot'] as bool?,
      userInvite: json['userInvite'],
    );

Map<String, dynamic> _$EventItemToJson(EventItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'eventStartDate': instance.eventStartDate,
      'eventEndDate': instance.eventEndDate,
      'organizer': instance.organizer,
      'capacity': instance.capacity,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'isActive': instance.isActive,
      'createdOn': instance.createdOn,
      'image': instance.image,
      'imageHomeLink': instance.imageHomeLink,
      'imageLink': instance.imageLink,
      'invitation': instance.invitation,
      'userLimit': instance.userLimit,
      'status': instance.status,
      'userInvite': instance.userInvite,
      'totalParticipants': instance.totalParticipants,
      'eventHot': instance.eventHot,
      'eventFlag': instance.eventFlag,
      'imageHome': instance.imageHome,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
