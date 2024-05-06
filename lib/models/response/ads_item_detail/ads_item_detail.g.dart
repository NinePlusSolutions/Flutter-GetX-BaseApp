// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_item_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdsItemDetail _$AdsItemDetailFromJson(Map<String, dynamic> json) =>
    AdsItemDetail(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      urlLink: json['urlLink'] as String,
      thumbnailUrlLink: json['thumbnailUrlLink'] as String,
      duration: json['duration'],
      typeAds: json['typeAds'] as int,
      typeUrlVideo: json['typeUrlVideo'] as int,
      status: json['status'] as int,
      qrCodePartner: json['qrCodePartner'] as String,
      targetAudiences: json['targetAudiences'] as List<dynamic>,
      createdOn: json['createdOn'] as String,
      createdBy: json['createdBy'] as String,
      viewerPoint:
          ViewerPoint.fromJson(json['viewerPoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdsItemDetailToJson(AdsItemDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlLink': instance.urlLink,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailUrlLink': instance.thumbnailUrlLink,
      'duration': instance.duration,
      'typeAds': instance.typeAds,
      'typeUrlVideo': instance.typeUrlVideo,
      'status': instance.status,
      'qrCodePartner': instance.qrCodePartner,
      'targetAudiences': instance.targetAudiences,
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'viewerPoint': instance.viewerPoint,
    };
