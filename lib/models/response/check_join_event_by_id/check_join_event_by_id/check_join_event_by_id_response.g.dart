// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_join_event_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckJointEventByIdResponse _$CheckJointEventByIdResponseFromJson(
        Map<String, dynamic> json) =>
    CheckJointEventByIdResponse(
      data: CheckJoinEventItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckJointEventByIdResponseToJson(
        CheckJointEventByIdResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
