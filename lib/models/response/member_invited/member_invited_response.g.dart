// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_invited_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberInvitedResponse _$MemberInvitedResponseFromJson(
        Map<String, dynamic> json) =>
    MemberInvitedResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => MemberInvitedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
    );

Map<String, dynamic> _$MemberInvitedResponseToJson(
        MemberInvitedResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalPages': instance.totalPages,
    };
