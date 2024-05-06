import 'package:json_annotation/json_annotation.dart';

part 'join_event_request.g.dart';

@JsonSerializable()
class JoinEventRequest {
  JoinEventRequest({
    required this.eventId,
   
  });

  
  int eventId;

  factory JoinEventRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinEventRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JoinEventRequestToJson(this);
}
