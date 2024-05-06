import 'package:WooPeople/models/response/reward_response/redeem_reward/redeem_reward_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'redeem_reward_response.g.dart';

@JsonSerializable()
class RedeemRewardResponse {
  final List<RedeemRewardItem> data;

  RedeemRewardResponse({required this.data});

  factory RedeemRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$RedeemRewardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RedeemRewardResponseToJson(this);
}