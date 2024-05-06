import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_event_item_response.g.dart';

@JsonSerializable()
class CheckJoinEventItemResponse {
  final bool data; 

  CheckJoinEventItemResponse({
    required this.data,
   
  });

  factory CheckJoinEventItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckJoinEventItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckJoinEventItemResponseToJson(this);
}