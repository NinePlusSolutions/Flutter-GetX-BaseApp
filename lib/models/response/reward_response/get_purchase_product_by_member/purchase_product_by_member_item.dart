import 'package:json_annotation/json_annotation.dart';

part 'purchase_product_by_member_item.g.dart';

@JsonSerializable()
class PurchaseProductByMemberItem {
  int id;
  int pointShopId;
  String pointShopName;
  int memberId;
  String memberLastName;
  String memberFirstName;
  int pointsUsed;
  String claimedAt;
  dynamic location;
  int status;
  String createdOn;
  String imageProduct;

  PurchaseProductByMemberItem({
    required this.id,
    required this.pointShopId,
    required this.pointShopName,
    required this.memberId,
    required this.memberLastName,
    required this.memberFirstName,
    required this.pointsUsed,
    required this.claimedAt,
    required this.location,
    required this.status,
    required this.createdOn,
    required this.imageProduct,
  });

  factory PurchaseProductByMemberItem.fromJson(Map<String, dynamic> json) =>
      _$PurchaseProductByMemberItemFromJson(json);
  Map<String, dynamic> toJson() => _$PurchaseProductByMemberItemToJson(this);
}
