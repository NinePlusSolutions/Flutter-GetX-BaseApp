// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_reward_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemRewardResponse _$RedeemRewardResponseFromJson(
        Map<String, dynamic> json) =>
    RedeemRewardResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => RedeemRewardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RedeemRewardResponseToJson(
        RedeemRewardResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
