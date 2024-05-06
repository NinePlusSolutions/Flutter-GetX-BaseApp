import 'package:json_annotation/json_annotation.dart';

part 'ads_agent_request.g.dart';

@JsonSerializable()
class AdsAgentRequest {
  AdsAgentRequest({
    required this.licenseAdAgentCode,
  });

  String licenseAdAgentCode;

  factory AdsAgentRequest.fromJson(Map<String, dynamic> json) =>
      _$AdsAgentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdsAgentRequestToJson(this);
}
