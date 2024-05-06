// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ads_consumption_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAdsConsumptionPointResponse _$GetAdsConsumptionPointResponseFromJson(
        Map<String, dynamic> json) =>
    GetAdsConsumptionPointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetAdsConsumptionPointResponseToJson(
        GetAdsConsumptionPointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
