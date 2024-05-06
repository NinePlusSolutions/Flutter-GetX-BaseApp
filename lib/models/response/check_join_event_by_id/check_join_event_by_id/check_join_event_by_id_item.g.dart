// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_join_event_by_id_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckJoinEventItem _$CheckJoinEventItemFromJson(Map<String, dynamic> json) =>
    CheckJoinEventItem(
      joinFlag: json['joinFlag'] as bool,
      ordinalNumber: json['ordinalNumber'],
    );

Map<String, dynamic> _$CheckJoinEventItemToJson(CheckJoinEventItem instance) =>
    <String, dynamic>{
      'joinFlag': instance.joinFlag,
      'ordinalNumber': instance.ordinalNumber,
    };
