// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_purchase_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPurchasePointResponse _$GetPurchasePointResponseFromJson(
        Map<String, dynamic> json) =>
    GetPurchasePointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetPurchasePointResponseToJson(
        GetPurchasePointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
