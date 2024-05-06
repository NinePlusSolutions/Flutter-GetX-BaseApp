// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_invited_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberInvitedItem _$MemberInvitedItemFromJson(Map<String, dynamic> json) =>
    MemberInvitedItem(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      referralCode: json['referralCode'] as String,
      pointReferral: json['pointReferral'] as int,
      createdOn: json['createdOn'] as String,
    );

Map<String, dynamic> _$MemberInvitedItemToJson(MemberInvitedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'referralCode': instance.referralCode,
      'pointReferral': instance.pointReferral,
      'createdOn': instance.createdOn,
    };
