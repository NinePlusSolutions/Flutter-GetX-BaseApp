import 'package:json_annotation/json_annotation.dart';

part 'is_read_request.g.dart';

@JsonSerializable()
class IsReadRequest {
  IsReadRequest({
    required this.id,
  });

  int id;

  factory IsReadRequest.fromJson(Map<String, dynamic> json) =>
      _$IsReadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$IsReadRequestToJson(this);
}