// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_earn_deduct_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEarnDeductPointResponse _$GetEarnDeductPointResponseFromJson(
        Map<String, dynamic> json) =>
    GetEarnDeductPointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetEarnDeductPointResponseToJson(
        GetEarnDeductPointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
