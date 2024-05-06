// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseProductRequest _$PurchaseProductRequestFromJson(
        Map<String, dynamic> json) =>
    PurchaseProductRequest(
      pointShopId: json['pointShopId'] as int,
      pointsUsed: json['pointsUsed'] as int,
      claimedAt: json['claimedAt'] as String,
    );

Map<String, dynamic> _$PurchaseProductRequestToJson(
        PurchaseProductRequest instance) =>
    <String, dynamic>{
      'pointShopId': instance.pointShopId,
      'pointsUsed': instance.pointsUsed,
      'claimedAt': instance.claimedAt,
    };
