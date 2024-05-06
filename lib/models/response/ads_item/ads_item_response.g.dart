// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdsItemResponse _$AdsItemResponseFromJson(Map<String, dynamic> json) =>
    AdsItemResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => AdsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdsItemResponseToJson(AdsItemResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
