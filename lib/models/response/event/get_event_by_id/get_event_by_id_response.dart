import 'package:freezed_annotation/freezed_annotation.dart';

import '../event_item.dart';

part 'get_event_by_id_response.g.dart';

@JsonSerializable()
class GetEventByIdResponse {
  final EventItem data;

  GetEventByIdResponse({required this.data});

  factory GetEventByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$GetEventByIdResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetEventByIdResponseToJson(this);
}
