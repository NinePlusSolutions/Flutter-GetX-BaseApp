// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tezt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResponse _$TestResponseFromJson(Map<String, dynamic> json) => TestResponse(
      data: json['data'] as Map<String, dynamic>,
      messages: json['messages'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$TestResponseToJson(TestResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'messages': instance.messages,
      'status': instance.status,
    };
