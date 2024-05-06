// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_item_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdsItemDetailResponse _$AdsItemDetailResponseFromJson(
        Map<String, dynamic> json) =>
    AdsItemDetailResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => AdsItemDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdsItemDetailResponseToJson(
        AdsItemDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
