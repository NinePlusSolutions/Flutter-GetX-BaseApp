// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdsItem _$AdsItemFromJson(Map<String, dynamic> json) => AdsItem(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      targetUrl: json['targetUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      urlLink: json['urlLink'] as String,
      thumbnailUrlLink: json['thumbnailUrlLink'] as String,
      duration: json['duration'] as int,
      typeAds: json['typeAds'] as int,
      typeUrlVideo: json['typeUrlVideo'] as int,
      status: json['status'] as int,
      qrCodePartner: json['qrCodePartner'] as String,
      targetAudiences: (json['targetAudiences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdOn: json['createdOn'] as String,
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$AdsItemToJson(AdsItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'targetUrl': instance.targetUrl,
      'imageUrl': instance.imageUrl,
      'urlLink': instance.urlLink,
      'thumbnailUrlLink': instance.thumbnailUrlLink,
      'duration': instance.duration,
      'typeAds': instance.typeAds,
      'typeUrlVideo': instance.typeUrlVideo,
      'status': instance.status,
      'qrCodePartner': instance.qrCodePartner,
      'targetAudiences': instance.targetAudiences,
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
    };
