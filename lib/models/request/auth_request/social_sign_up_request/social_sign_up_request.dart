import 'package:json_annotation/json_annotation.dart';

part 'social_sign_up_request.g.dart';

@JsonSerializable()
class SocialSignUpRequest {
  SocialSignUpRequest({
    required this.userId,
    required this.email,
    required this.socialType,
    required this.password,
    required this.userName
  });

  String userId;
  String email;
  int socialType;
  String password;
  String userName;
  factory SocialSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialSignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SocialSignUpRequestToJson(this);
}
