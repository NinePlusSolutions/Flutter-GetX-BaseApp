import 'package:json_annotation/json_annotation.dart';

part 'change_profile_request.g.dart';

@JsonSerializable()
class ChangeProfileRequest {
  ChangeProfileRequest({
    required this.firstName,
    required this.lastName,
    this.dateOfBirth,
    required this.avatarUrl,
    required this.address,
    required this.gender,
    required this.email,
  });

  dynamic firstName;
  dynamic lastName;
  dynamic dateOfBirth;
  dynamic avatarUrl;
  dynamic address;
  dynamic gender;
  String? email;

  factory ChangeProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeProfileRequestToJson(this);
}
