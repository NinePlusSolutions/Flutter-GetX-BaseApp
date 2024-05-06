// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeProfileRequest _$ChangeProfileRequestFromJson(
        Map<String, dynamic> json) =>
    ChangeProfileRequest(
      firstName: json['firstName'],
      lastName: json['lastName'],
      dateOfBirth: json['dateOfBirth'],
      avatarUrl: json['avatarUrl'],
      address: json['address'],
      gender: json['gender'],
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ChangeProfileRequestToJson(
        ChangeProfileRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth,
      'avatarUrl': instance.avatarUrl,
      'address': instance.address,
      'gender': instance.gender,
      'email': instance.email,
    };
