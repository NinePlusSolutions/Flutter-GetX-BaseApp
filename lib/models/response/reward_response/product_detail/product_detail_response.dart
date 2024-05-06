import 'package:freezed_annotation/freezed_annotation.dart';

import '../redeem_reward/redeem_reward_item.dart';

part 'product_detail_response.g.dart';

@JsonSerializable()
class ProductDetailResponse {
  final RedeemRewardItem data;

  ProductDetailResponse({required this.data});

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailResponseToJson(this);
}