import 'package:json_annotation/json_annotation.dart';

part 'check_join_event_by_id_item.g.dart';

@JsonSerializable()
class CheckJoinEventItem {
  bool joinFlag;
  dynamic ordinalNumber;

  CheckJoinEventItem({
    required this.joinFlag,
    required this.ordinalNumber,
  });

  factory CheckJoinEventItem.fromJson(Map<String, dynamic> json) =>
      _$CheckJoinEventItemFromJson(json);
  Map<String, dynamic> toJson() => _$CheckJoinEventItemToJson(this);
}
