// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerItem _$PartnerItemFromJson(Map<String, dynamic> json) => PartnerItem(
      id: json['id'] as int,
      name: json['name'] as String?,
      urlLogo: json['urlLogo'] as String?,
      urlLogoLink: json['urlLogoLink'] as String?,
      urlImage: json['urlImage'],
      urlImageLink: json['urlImageLink'] as String?,
      qrCode: json['qrCode'] as String?,
      createdOn: json['createdOn'] as String?,
      countAds: json['countAds'],
    );

Map<String, dynamic> _$PartnerItemToJson(PartnerItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'urlLogo': instance.urlLogo,
      'urlLogoLink': instance.urlLogoLink,
      'urlImage': instance.urlImage,
      'urlImageLink': instance.urlImageLink,
      'qrCode': instance.qrCode,
      'countAds': instance.countAds,
      'createdOn': instance.createdOn,
    };
