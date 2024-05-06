// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerResponse _$PartnerResponseFromJson(Map<String, dynamic> json) =>
    PartnerResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => PartnerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnerResponseToJson(PartnerResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
