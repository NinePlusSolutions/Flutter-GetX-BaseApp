import 'package:json_annotation/json_annotation.dart';

part 'tezt.g.dart';

@JsonSerializable()
class TestResponse {
  TestResponse({
    required this.data,
    required this.messages,
    required this.status,
  });

  Map<String, dynamic> data;
  String messages;
  String status;

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TestResponseToJson(this);
}
