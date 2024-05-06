// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_member_referral_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMemberReferallPointResponse _$GetMemberReferallPointResponseFromJson(
        Map<String, dynamic> json) =>
    GetMemberReferallPointResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllPointItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$GetMemberReferallPointResponseToJson(
        GetMemberReferallPointResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
