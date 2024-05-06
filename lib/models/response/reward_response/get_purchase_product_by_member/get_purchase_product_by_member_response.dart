import 'package:WooPeople/models/response/reward_response/get_purchase_product_by_member/purchase_product_by_member_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_purchase_product_by_member_response.g.dart';

@JsonSerializable()
class GetPurchaseProductByMemberResponse {
  final List<PurchaseProductByMemberItem> data;

  GetPurchaseProductByMemberResponse({required this.data});

  factory GetPurchaseProductByMemberResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPurchaseProductByMemberResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPurchaseProductByMemberResponseToJson(this);
}