import 'package:json_annotation/json_annotation.dart';

part 'get_all_point_item.g.dart';

@JsonSerializable()
class GetAllPointItem {
  int memberId;
  String memberName;
  String receiveDate;
  int point;
  int pointType;
  int edType;

  GetAllPointItem({
    required this.memberId,
    required this.memberName,
    required this.receiveDate,
    required this.point,
    required this.pointType,
    required this.edType,
  });

  factory GetAllPointItem.fromJson(Map<String, dynamic> json) =>
      _$GetAllPointItemFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllPointItemToJson(this);
}
