import 'package:json_annotation/json_annotation.dart';

part 'social_login_request.g.dart';

@JsonSerializable()
class SocialLoginRequest {
  SocialLoginRequest({
    required this.userId,
    required this.socialType,
    required this.email
  });

  String userId;
  int socialType;
  String email;
  factory SocialLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SocialLoginRequestToJson(this);
}