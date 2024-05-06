// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialSignUpRequest _$SocialSignUpRequestFromJson(Map<String, dynamic> json) =>
    SocialSignUpRequest(
      userId: json['userId'] as String,
      email: json['email'] as String,
      socialType: json['socialType'] as int,
      password: json['password'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$SocialSignUpRequestToJson(
        SocialSignUpRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'socialType': instance.socialType,
      'password': instance.password,
      'userName': instance.userName,
    };
