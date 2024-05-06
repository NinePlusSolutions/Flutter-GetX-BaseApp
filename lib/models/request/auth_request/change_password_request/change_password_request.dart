import 'package:json_annotation/json_annotation.dart';

part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  ChangePasswordRequest({
    required this.password,
    required this.newPassword,
    required this.confirmNewPassword,
  });

  String password;
  String newPassword;
  String confirmNewPassword;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
