// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_event_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEventByIdResponse _$GetEventByIdResponseFromJson(
        Map<String, dynamic> json) =>
    GetEventByIdResponse(
      data: EventItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetEventByIdResponseToJson(
        GetEventByIdResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
