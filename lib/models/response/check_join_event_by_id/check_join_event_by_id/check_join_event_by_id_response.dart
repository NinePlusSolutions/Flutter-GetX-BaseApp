import 'package:freezed_annotation/freezed_annotation.dart';

import 'check_join_event_by_id_item.dart';

part 'check_join_event_by_id_response.g.dart';

@JsonSerializable()
class CheckJointEventByIdResponse {
  final CheckJoinEventItem data;

  CheckJointEventByIdResponse({required this.data});

  factory CheckJointEventByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckJointEventByIdResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckJointEventByIdResponseToJson(this);
}