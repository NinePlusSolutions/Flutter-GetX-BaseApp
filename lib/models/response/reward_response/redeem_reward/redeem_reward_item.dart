import 'package:json_annotation/json_annotation.dart';

part 'redeem_reward_item.g.dart';

@JsonSerializable()
class RedeemRewardItem {
  int id;
  String name;
  dynamic description;
  String startDate;
  String endDate;
  bool isActive;
  int pointReward;
  dynamic urlImage;
  String urlImageLink;
  int type;
  int total;
  String createdOn;

  RedeemRewardItem({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.isActive,
    required this.pointReward,
    required this.urlImage,
    required this.type,
    required this.total,
    required this.createdOn,
    required this.urlImageLink,
  });

  factory RedeemRewardItem.fromJson(Map<String, dynamic> json) =>
      _$RedeemRewardItemFromJson(json);
  Map<String, dynamic> toJson() => _$RedeemRewardItemToJson(this);
}
