import 'package:json_annotation/json_annotation.dart';

part 'follow_event_request.g.dart';

@JsonSerializable()
class FollowEventRequest {
  FollowEventRequest({
    required this.eventId,
  });

  int eventId;

  factory FollowEventRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowEventRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowEventRequestToJson(this);
}
