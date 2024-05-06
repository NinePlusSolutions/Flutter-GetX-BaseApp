import 'package:json_annotation/json_annotation.dart';

part 'change_status_read_request.g.dart';

@JsonSerializable()
class ChangeStatusReadRequest {
  ChangeStatusReadRequest({
    required this.id,
  });

  int id;

  factory ChangeStatusReadRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeStatusReadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeStatusReadRequestToJson(this);
}