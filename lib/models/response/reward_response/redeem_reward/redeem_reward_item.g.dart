// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_reward_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemRewardItem _$RedeemRewardItemFromJson(Map<String, dynamic> json) =>
    RedeemRewardItem(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'],
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      isActive: json['isActive'] as bool,
      pointReward: json['pointReward'] as int,
      urlImage: json['urlImage'],
      type: json['type'] as int,
      total: json['total'] as int,
      createdOn: json['createdOn'] as String,
      urlImageLink: json['urlImageLink'] as String,
    );

Map<String, dynamic> _$RedeemRewardItemToJson(RedeemRewardItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'isActive': instance.isActive,
      'pointReward': instance.pointReward,
      'urlImage': instance.urlImage,
      'urlImageLink': instance.urlImageLink,
      'type': instance.type,
      'total': instance.total,
      'createdOn': instance.createdOn,
    };
