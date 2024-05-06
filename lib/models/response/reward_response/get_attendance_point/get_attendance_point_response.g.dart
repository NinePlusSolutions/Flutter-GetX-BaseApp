// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_attendance_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAttendancePointResponse _$GetAttendancePointResponseFromJson(
        Map<String, dynamic> json) =>
    GetAttendancePointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetAttendancePointResponseToJson(
        GetAttendancePointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
