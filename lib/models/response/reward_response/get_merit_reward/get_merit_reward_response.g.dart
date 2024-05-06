// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_merit_reward_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMeritRewardResponse _$GetMeritRewardResponseFromJson(
        Map<String, dynamic> json) =>
    GetMeritRewardResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetMeritRewardResponseToJson(
        GetMeritRewardResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
