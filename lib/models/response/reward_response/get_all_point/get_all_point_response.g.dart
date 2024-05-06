// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllPointResponse _$GetAllPointResponseFromJson(Map<String, dynamic> json) =>
    GetAllPointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetAllPointResponseToJson(
        GetAllPointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
