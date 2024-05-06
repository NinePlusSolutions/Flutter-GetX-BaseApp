import 'package:WooPeople/models/response/event/event_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_response.g.dart';

@JsonSerializable()
class EventResponse {
  final List<EventItem> data;

  EventResponse({required this.data});

  factory EventResponse.fromJson(Map<String, dynamic> json) =>
      _$EventResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventResponseToJson(this);
}
