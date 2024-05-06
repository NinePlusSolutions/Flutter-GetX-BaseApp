import 'package:json_annotation/json_annotation.dart';

part 'purchase_product_request.g.dart';

@JsonSerializable()
class PurchaseProductRequest {
  PurchaseProductRequest({
    required this.pointShopId,
    required this.pointsUsed,
    required this.claimedAt,
  });

  int pointShopId;
  int pointsUsed;
  String claimedAt;

  factory PurchaseProductRequest.fromJson(Map<String, dynamic> json) =>
      _$PurchaseProductRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseProductRequestToJson(this);
}
