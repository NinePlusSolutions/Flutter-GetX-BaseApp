// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ads_task_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAdsTaskPointResponse _$GetAdsTaskPointResponseFromJson(
        Map<String, dynamic> json) =>
    GetAdsTaskPointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetAdsTaskPointResponseToJson(
        GetAdsTaskPointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
